# 설치 방법

우선 본 레포를 적당한 위치에 복사합니다. 이후 각 파일별 지시를 따라주세요.

## zshrc

1. `.zshrc` 파일을 루트 디렉토리(~)에 복사하세요.
2. `source ~/.zshrc` 명령으로 zsh 설정을 적용하세요.
3. `exec zsh`로 zsh를 재실행하세요.
4. [zplug 레포](https://github.com/zplug/zplug)를 참고해 zplug를 설치하세요.
5. `zplug install` 명령어로 모든 플러그인을 설치하세요.

혹시 [thefuck](https://github.com/nvbn/thefuck)을 사용하고 싶다면 레포를 참고해 설치하세요.

혹시 폰트가 깨지거나 네모 박스가 생긴다면 Nerd font(추천: [JetbrainsMonoMedium Nerd Font Mono](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Ligatures/Medium/complete/JetBrains%20Mono%20Medium%20Nerd%20Font%20Complete%20Mono.ttf))를 설치하세요.

## terminal-profile.terminal

1. 파일을 더블클릭 하세요.

혹은,
1. `terminal.app`을 실행시킨 후
2. `⌘ ,` 단축키로 환경설정에 진입하세요.
3. `프로파일` -> 하단 `...` -> `가져오기` 를 선택해서
4. terminal-profile.terminal을 선택하세요.

그리고 폰트를 Jetbrains Mono Medium Nerd Font Mono으로 설정해주세요.

## vimrc

1. `.vimrc` 파일을 루트 디렉토리(~)에 복사하세요.
2. [vim-plug](https://github.com/junegunn/vim-plug) 레포를 참조해 vim-plug를 설치하세요.
4. `vim`에서 `:PlugInstall` 명령어로 모든 플러그인을 설치하세요.

### Keymappings
현재 .vimrc 파일의 키매핑은 다음과 같습니다.<sup>업데이트: 2022. 12. 03</sup>
- Leader key: `,` (comma)
- Normal Mode:
  - `,` + `q` : 종료하기 (q)
  - `,` + `Q` : 모두 종료하기 (qa)
  - `,` + `s` : 저장하기 (w)
  - `,` + `S` : 저장하고 나가기 (wq)
  - `,` + `v` : 세로 분할 화면 열기 (vs)
- Insert Mode:
  - `Ctrl` + `s` : 저장하기 (w)
  - `Ctrl` + `v` : 붙여넣기 (C-r *)
  - `Ctrl` + `z` : Undo (u)
  - `Ctrl` + `r` : Redo (C-r)
