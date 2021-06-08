# init
개인 작업 환경을 빠르게 구성하기 위한 설정 파일입니다.  
호스트 환경에 [VirtualBox](https://www.virtualbox.org/)와 [Vagrant](https://www.vagrantup.com/) 설치가 필요합니다.  

## 1. 설치
```powershell
git clone https://www.github.com/sioni322/init
```  
먼저, git clone을 통해 파일들을 다운로드 받습니다.  

```powershell
vagrant plugin install vagrant-vbguest
```  
```powershell
vagrant plugin install vagrant-winnfsd
```  
vagrant-vbguest 및 vagrant-winnfsd 플러그인을 설치합니다.  

```powershell
mv Vagrantfile working_directory
cd working_directory
```  
그 후, 작업하기를 희망하는 디렉토리(공유 디렉토리)에 Vagrantfile을 옮겨준 후 해당 디렉토리로 이동합니다.  

```powershell
vagrant up
```  
Vagrantfile이 존재하는 디렉터리에서 위 명령어를 실행하면, 해당 box의 설치가 완료됩니다.  

```powershell
vagrant ssh
```  
Box가 VirtualBox에 잘 올라갔다면, 위 명령어를 통해 커맨드 라인으로 게스트 OS에 접근이 가능합니다.  

## 2. 진행 사항 저장
만약 작업을 마친 후 box를 종료했을 때, 공유 폴더 외의 요소에 변화가 존재하는 경우(패키지 설치 등) 해당 변화는 box에 저장되지 않습니다.  
그러므로 매번 box를 올릴 때마다(vagrant up, vagrant ssh) 해당 부분에 대해 다시 작업해주어야만 하며, 이 작업은 매우 비효율적입니다.  

결과적으로 다음과 같은 명령어를 통해, box의 환경이 변경되었을 때마다 해당 box를 저장할 수 있습니다.  
```powershell
vagrant package
```  
위 명령어를 통해 새로운 box를 생성할 수 있으며,  

```powershell
vagrant box add new_box_name C:\Users\...\package.box
```  
그 후 생성된 box를 목록에 올릴 수 있습니다. vagrant box list 명령어를 통해 존재하는 box 목록을 확인 가능합니다.  

```powershell
vagrant init new_box_name
```
해당 명령어를 통해 새로 생성한 box를 기반으로 하는 Vagrantfile을 생성할 수 있습니다.  

## 3. 환경
* 공유 폴더는 /workspace에 마운트 됩니다.
* VagrantFile에서 지정한 게스트 OS는 CentOS7 입니다.
* 스크립트 내용은 수정 시 업데이트 될 예정입니다(Ansible을 이용해 멱등성을 보장하게끔 하는 것이 목표입니다🤗).
  

