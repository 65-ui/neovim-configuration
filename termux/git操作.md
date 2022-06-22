<!-- TOC Marked -->

+ [git 基础](#git-基础)
+ [git 分支](#git-分支)

<!-- /TOC -->

# git 基础

1. 配置用户信息

```git
git config --global user.name "xxx"
git config --global user.email "xxx@xx.com"
```

2. 创建 git 仓库

```git
git init
```

3. 查看当前仓库文件变化情况：

```git
git status
```

4. 添加修改（可使用 git add . 来添加当前仓库所有修改）

```git
git add .
```

5. 向 Git 提交内容： （.xx 为对提交的内容进行描述）

```git
git commit -m “xx”
```

6. 让 Git 不提交某些文件/忽略某些文件：创建文件  `.gitignore`  并在文件中添加文件名/文件夹名   即可  （若 git 已经开始追踪某些文件   则需要 11）
7. 回滚，撤销提交操作：

```git
git reset "移除文件名" 
```

8. 跳过暂存区一并提交

```git
git commit -a -m "描述信息"
```

9. 移除文件

```git
# 从git仓库和工作区移除index.js文件
git rm -f index.js
# 只从git 仓库中移除index.css 但保留工作区中的index.css文件
git rm --cached index.css
```

10. 查看历史提交

```git
git log
```

11. 将远程仓库克隆本地

```git
git clone "地址"
```

# git 分支

1. 查看 git 分支

```git
git branch
```

2. 创建新分支

```git
git branch 分支名称
```

3. 切换分支

```git
git checkout "分支名称"
```

4. 分支的快速创建和切换

```git
git checkout -b "分支名称"
```

5. 合并分支

```git
# 切换到主分支上
git checkout master
# 合并分支
git merge "分支"
```

6. 删除分支

```git
git branch -d "分支名称"
```

7. 冲突合并

```git
# 假设reg 分支合并master分支之间冲突
git checkout master
git merge reg
# 打开冲突手动解决冲突
git add .
git commit -m ""
```
