# init
개인 작업 환경을 빠르게 구성하기 위한 설정 파일입니다.
호스트 환경에 [VirtualBox]("https://www.virtualbox.org/")와 [Vagrant]("https://www.vagrantup.com/") 설치가 필요합니다.

## 1. 사용법
```git pull https://www.github.com/sioni322/init```
원하는 디렉터리에 해당 파일들을 다운로드 받습니다.
  
```vagrant plugin install vagrant-vbguest```
```vagrant plugin install vagrant-winnfsd```
vagrant-vbguest 및 vagrant-winnfsd 플러그인을 설치합니다.
이는 공유 폴더를 설정하기 위함입니다.

```vagrant up```
VagrantFile이 존재하는 디렉터리에서 위 명령어를 실행합니다.
  
```vagrant ssh```
Box가 VirtualBox에 잘 올라갔다면, 위 명령어를 통해 CUI로 게스트 OS에 접근이 가능합니다.

## 2. 환경
* work 디렉터리는 공유 폴더 입니다(Visual Studio Code로 작업 시 편리😎).
* VagrantFile에서 지정한 게스트 OS는 CentOS7 입니다.
* 스크립트 내용은 수정 시 업데이트 될 예정입니다.
  

