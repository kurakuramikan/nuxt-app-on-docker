# Nuxt App on Docker
## Recommended Development Environment

| NAME                         | TYPE                   | COMMENT                               |
|:-----------------------------|:-----------------------|:--------------------------------------|
| EditorConfig                 | Shared Editor Settings | EditorConfig for VS Code is released. |
| Visual Studio Code (VS Code) | Editor                 |                                       |


## How to Setup
The following are how to setup for macOS in development environment.

1. Install [Docker](https://www.docker.com/products/docker-desktop) and docker-compose to build containers to run this project on your local.
2. Run `docker-compose up` to create and run containers.
3. You can develop it if you access `http://localhost:3000`.


## Docker commands

- `docker run -it --rm <container id> sh`: Create and connect container
- `docker run -it --rm <container id> --start`: Run `yarn && yarn nuxt`
- `docker run -it --rm <container id> --build`: Run `yarn build`

> Commonly Used Commands
> 
> ```
> `docker build -f <Dockerfile path> <project root path(default: .)>`: Build Docker
> `docker rmi <Docker image id>`: Remove Docker image
> `docker rm <container id>`: Remove container
> 
> `docker exec -it <container id> <run command>`: Connect running contaier
> options
>   `--rm`: Delete the container when you exit the container
>   `-v <Mac absolute path>:<Container absolute path>`: Synchronize specified directories
>   `-p <Mac port>:<Container port>`: Synchronize specified port
>   `--name`: Name container
> ```


## Environments
The following is environments in this project.

| ENVIRONMENT NAME | FOR            | DOMAIN           | COMMENT     |
|:-----------------|:---------------|:-----------------|:------------|
| `development`    | Localhost      | `localhost:3000` |             |

### Installation
- Choose between integrated server-side frameworks: None (Nuxt default server)
- Check the features needed for your project: PWA, Axios
- Choose your favorite UI framework: Element UI
- Choose your favorite test framework: None


## Commit Rules
1. ブランチの運用
	1. ブランチの運用フローとして [GitHub Flow](http://scottchacon.com/2011/08/31/github-flow.html) を採用する
	2. `master` ブランチをデフォルトブランチとして用いる
	3. 機能開発/変更/修正する場合は feature/ をブランチ名の接頭辞として用いる
	4. ブランチ名の各単語は `-` でつなぐチェーンケースを用いる
	5. ブランチ名は作業内容を明確に表す
	6. ブランチ名は動詞の原形から書き始めを原則とする
	7. 他ブランチへのマージは GitHub のプルリクエスト機能を用いる
2. コミットメッセージ
	- コミットメッセージは、以下に示す形式に従うこと

```
[<COMMIT_TYPE>] <SUMMARY>

- <DESCRIPTION>
- <DESCRIPTION>
```

### \<COMMIT_TYPE\>
コミットの種類を表す文字列で、以下の文字列から選択する。

- `Add`：機能追加
- `Fix`：バグ修正
- `Change`：破壊的変更
- `Clean`：リファクタ
- `Remove`：不要になったファイルやライブラリの削除

> **Examples**
> 
> - [Add] Implement to sort tasks on edit page 
> 
> BAD
> 
> - [Add]Implement to sort tasks on edit page
> - [Add] implement to sort tasks on edit page
> - [ADD] Implement to sort tasks on edit page
> - Add Implement to sort tasks on edit page
> - Add: Implement to sort tasks on edit page
> - [Add] Implement to sort tasks on edit page.

### \<SUMMARY\>
コミットの要約。大文字から書き始め、文末にピリオド `.` を用いない。

### \<DESCRIPTION\>（任意）
コミットの内容をより明確にし、レビューする人の負担を少なくする。3行目からコミット内容を箇条書き `-` で表す。
箇条書きがかなりの数になる場合は、コミット分割するべきである。

> **Example**
> 
> ```
> [Add] Implement to sort tasks on edit page 
>
> - Implement XXXXXX module 
> - Add XXXXX component

## GitHub Pullrequest
- タイトルはブランチ名とほぼ同じものを採用し、大文字から始めること
- テンプレートに従って記述すること

> **Examples**
> 
> Branch Name
> 
> - `feature/implement-to-sort-tasks-on-edit-page`
> 
> PR Title:
> 
> - Implement to sort tasks on edit page 
> 
> 
> PR Body:
> 
> ```
> ## New Features
> - Implement XXXXXX module 
> - Add XXXXX component
> ```
