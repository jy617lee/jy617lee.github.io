---
layout: post
title: "github jekyll 블로그 만들기 - 1"
author: "jeeyun"
---



## 정적 페이지(Static Page) 와 블로그

우리가 접하는 대부분의 웹페이지는 동적 페이지(Dynamic Page)다. 동적 페이지란 포털에서 뉴스 헤드라인을 서택하면 서버에서 해당 뉴스 기사를 받아와 뉴스 페이지를 띄워주는 것 처럼 사용자의 요청에 따라 동적으로 변하는 웹 페이지를 뜻한다.

이와는 반대로 정적 페이지(Static Page)란 서버에 저장된 형태가 그대로 유지되는 웹페이지를 가르킨다. 



## Github Pages와 jekyll

[GitHub Pages](https://pages.github.com/)는 GitHub 저장소의 내용을 웹 페이지로 서비스해주는 기능으로 그 중에서도 [Jekyll](https://jekyllrb.com/)은 [GitHub Pages](https://pages.github.com/)가 기본으로 지원하는 정적 사이트 생성기이다. Github에 Markdown으로 작성된 문서롤 push하면 [Jekyll](https://jekyllrb.com/) 이 문서를HTML로 변환하여 웹페이지로 만들어준다. **즉 Github 저장소에 저장된 Markdown 소스들을 이용해 웹페이지로 만들어주는 서비스**이다.  

Github Pages와 Jekyll을 통한 정적 블로깅은 아래와 같은 장점을 가진다. 

- 따로 서버를 두지 만들지 않아도 된다.
- Markdown으로 작성해 코드나 수식의 삽입이 간단하고, 다양한 에디터로 글을 쓸 수 있다.
- 각 포스트의 변경 이력이 Github를 통해 추적 가능하다.
- 무료 호스팅.

현재 [카카오](https://github.com/kakao/kakao.github.io), [우아한 형제들](http://woowabros.github.io/), [스포카](https://spoqa.github.io/) 등의 기업들이 jekyll을 이용하여 기술 블로그를 운영하고 있다. 



## Jekyll 설치를 위한 환경 만들기

- 윈도우 6.3을 기준으로 합니다.
- 'Github에 가입이 되어 있으며 repository를 create, clone을 할 수 있다'는 것을 전제로 합니다. Github 사용법은 [여기](https://milooy.wordpress.com/2017/06/21/working-together-with-github-tutorial/)를 참고하세요.
- 터미널은 [GitBash](https://gitforwindows.org/) 를 사용하는 것을 전제로 합니다. 

#### Ruby 설치하기

Jekyll은 Ruby로 만들어다. Mac과 달리 Window는 Ruby를 내장하지 않고 있기 때문에 설치가 필요하다. https://rubyinstaller.org/downloads/ 에서 맞는 버전을 설치한다. 

#### Atom 설치하기

Jekyll의 설정파일이나 HTML 파일을 편집하는 용도로 사용합니다. **https://atom.io/** 에서 설치가 가능하다. 

#### Github 계정에 Repository 만들기

Repository name이 `username.github.io` 인 Repository를 생성해 로컬 PC에 clone 한다. 



## Jekyll로 블로그 만들기

#### 1. Jekyll 설치

~~~
$ gem install jekyll bundler
~~~

먼저 Gitbash에서 clone해온 repository로 이동해 위와 같은 코드를 입력한다. 아래와 같은 로그가 나오면 설치에 성공한 것이다

![설치 성공]({{"/assets/gem_install.png" | absolute_url}})



#### 2. 로컬(내 PC)에 Jekyll로 새 블로그 생성

~~~
$ jekyll new {my-awesome-site}
~~~

위 코드는 Jekyll에게 `my-awsome-site`라는 이름의 새 Blog를 만들어달라는 명령이다. 



#### 3. 로컬에서 서버 구동하여 생성된 블로그 확인

~~~
$ cd {my-awesome-site}
$ bundle exec jekyll serve
~~~

`cd my-awesome-site ` 명령어는 '`my-awesome-site`디렉토리로 이동하라'는 뜻이며 `bundle exec jekyll serve`는 'jekyll 서버를 구동한다'는 의미다. 이 명령어를 실행한 후 `http://127.0.0.1:4000/ `를 브라우저 주소창에 입력하면 새로운 블로그를 볼 수 있다. 서버 구동을 종료하려면 `Ctrl-c`를 누르면 된다. 



#### 4. Github Pages로 Publishing

**1) _config.yml 파일 수정하기**

새로운 블로그가 생성된 것을 확인했다면 파일 탐색기에서 `my-awesome-site` 디렉토리 내에 생성된 `_config.yml`파일을 Atom 에디터를 통해 연다. `_config.yml`파일은 아래와 같다. 

![설치 성공](C:\jy617lee.github.io\assets\_config.png)



title, email, description 등의 항목을 내 정보로 수정한다. 

~~~

~~~

 위의 명령어로 서버를 다시 한 번 구동해 제대로 수정되었는지 확인한다. 

**2) Publishing**

원하는대로 수정이 되었다면 아래의 명령어로 `my-awesome-site` 디렉토리에서 변경된 내역을 Git Repository에 반영한다.

~~~
$ git add .
$ git commit -m "initialize my site"
$ git push
~~~

브라우저 주소창에 `username.github.io`를 입력해 Github Pages로 Publishing 되었음을 확인한다. 

`404 not found` 에러가 뜨는 경우 Repository에 반영되는 것과 Publishing 사이에 시간적 간격이 있을 수 있으니 1-2분 정도 기다린 후 새로고침 해본다. 