if(!window['lezhin']) {
	lezhin = {}; // 배열 생성
	( function (_O) {
    _O.start = () => { // 애로우 펑션
      _O.Ctrl.gameNewStart.bind(_O.Ctrl)();
    };
    _O.Vars = {
      lists: [ // 
        {
          name: '부당거래',
          videoSrc: './video/1.mp4'
        },
        {
          name: '추격자',
          videoSrc: './video/2.mp4'
        },
        {
          name: '타짜',
          videoSrc: './video/3.mp4'
        },
        {
          name: '신세계',
          videoSrc: './video/4.mp4'
        },
        {
          name: '신세계',
          videoSrc: './video/5.mp4'
        },
        {
          name: '봄날은 간다',
          videoSrc: './video/6.mp4'
        },
        {
          name: '살인의 추억',
          videoSrc: './video/7.mp4'
        },
        {
          name: '베테랑',
          videoSrc: './video/8.mp4'
        },
        {
          name: '베테랑',
          videoSrc: './video/9.mp4'
        },
        {
          name: '친구',
          videoSrc: './video/10.mp4'
        },
        {
          name: '친구',
          videoSrc: './video/11.mp4'
        },
        {
          name: '친절한 금자씨',
          videoSrc: './video/12.mp4'
        },
        {
          name: '내부자들',
          videoSrc: './video/13.mp4'
        },
        {
          name: '건축학개론',
          videoSrc: './video/14.mp4'
        },
        {
          name: '내부자들',
          videoSrc: './video/15.mp4'
        },
        {
          name: '올드보이',
          videoSrc: './video/16.mp4'
        }
      ],
      curRound: 16,    // 16강부터 두개씩 뽑아 다음 라운드 진출자 결정
      curStage: 0,
      gameHistory: {
        '16': [],
        '8': [],
        '4': [],
        '2': [],
        '1': []
      }
    };
    _O.Ctrl = {
      rndLists(arr) { //배열 랜덤 섞음
        return arr.map((n) => { return [Math.random(), n] }).sort().map((n) => { n[1].selected = false; return n[1] });
      },
      selectedLists(arr) {
        return arr.filter((n) => {
          if(n.selected === true) {
            n.selected = false;
            return n;
          }
        });
      },
      gameNewStart() {
        const v = _O.Vars;
        v.gameHistory[v.curRound.toString()] = this.rndLists(v.lists);
        console.log('gameNewStart::gameHistory::', v.gameHistory);
        _O.Html.set.bind(_O.Html)();
      },
      nextRound() {
        const v = _O.Vars;
        if(v.curRound <= 1) return;
        if(v.curRound > 1) v.curRound /= 2;
        v.curStage = 0;
        v.lists = _O.Ctrl.selectedLists(v.gameHistory[(v.curRound * 2).toString()]);
        v.gameHistory[v.curRound.toString()] = this.rndLists(v.lists);
        _O.Html.setRoundTitle();
        _O.Html.setItem();
      }
    };
    _O.Event = {
      clickItem(obj) {
        if(_O.Vars.curRound === 1) return;
        const e = window.event;
        const idx = obj.id.split('_')[1];
        _O.Vars.gameHistory[_O.Vars.curRound.toString()][idx].selected = true;
        obj.className = 'item selected';
        if(_O.Vars.curStage < _O.Vars.curRound/2) _O.Vars.curStage++;
        if(_O.Vars.curStage === _O.Vars.curRound/2) _O.Ctrl.nextRound();
        _O.Html.setItem();
      }
    };
    _O.Html = {
      set() {
        this.setRoundTitle();
        this.setContent();
      },
      setRoundTitle() {
        if(_O.Vars.curRound > 1) document.getElementById('roundTitle').innerText = `${_O.Vars.curRound}강 선택`;
        else document.getElementById('roundTitle').innerText = `축하합니다. 최종 이상형이 선정되었습니다.`;
      },
      setItem() {
        const s = _O.Html.getItem();
        const tObj = document.getElementById('list_ideal');
        if(!tObj) return;
        tObj.innerHTML = s;
      },
      getItem() {
        let s = '', i = _O.Vars.curStage * 2, length = i + (_O.Vars.curRound > 1 ? 2 : _O.Vars.curRound);
        for(i; i < length && length <= _O.Vars.curRound; i++) {
          s += `
          <li>
            <a class="item" id="item_${i}" href="javascript:void(0);" onclick="lezhin.Event.clickItem(this);">
              <span class="thumb"><video src="${_O.Vars.gameHistory[_O.Vars.curRound.toString()][i]['videoSrc']}" alt="명대사" controls></span>
              <span class="tit">이름: ${_O.Vars.gameHistory[_O.Vars.curRound.toString()][i]['name']}</span>
        
             </a>
          </li>
          `;
        }
        return s;
      },
      setContent() {
        const tObj = document.getElementById('content');
        tObj.className = 'content in_game';
        let s = `
          <ul class="list_ideal" id="list_ideal">
          ${this.getItem()}
          </ul>
        `;
        tObj.innerHTML = s;
      }
    }
	}) (lezhin);
  
} 

