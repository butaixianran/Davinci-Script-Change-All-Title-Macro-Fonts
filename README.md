# Davinci Script: Change All Title Macros' Fonts into the one you like

If you have some title macros, which use fonts you don't have, and you don't wanna use, and these fonts stop you from preview your title macros.    

Then you need this script.    

It gonna scan all macros in the folder you select, and change their fonts into the one you like, then write the data back to file.  

So, you'll never has a title macro can't preview. You'll never need to install a font you don't need.  

# OS
**Only works on windows!**  

If you wannt it work on you OS, you must change this part:  
`'dir "'..path..'" /b'`  
to return folder and file names in your OS.  


# How to use
* Download the lua script.
* **Open the script with as text**
* Change `title_macro_path` to your own path of title macros
* Change `new_font` and `new_font_style` into the one you like
* Save and close file.
* Go to your Davinci's Fusion workspace
* Drag this script into node area.
* Done.

It gonna keeps open and close cmd windows to get folder and file list. That's the only way I found can make this works.   

And it won't create any node in your node area. If all cmd window closed, then it's done.   

You can open Davinci's script console, to view all details. To show console, go to menu: Workspace->Console. Then check "Show Script Message" button to view all details.  


# Language
## Chinese 中文
### 达芬奇脚本：修改所有字幕模板的字体，为你指定的字体  

达芬奇中，如果你有一些字幕模板，里面用了一些你没有的字体，导致你无法预览这些字幕模板，那么你就需要这个脚本。  

这个脚本，会读取你指定文件夹下（包含子文件夹）的所有模板文件，把其中的字体改成你指定的。  

这样，你就不再有无法预览的字幕模板。也不再需要去下载你根本不会去用，也不想用的各种收费字体。  

### 操作系统
**注意，只在windows下有效！**  

如果要用于其他系统，你修改打开脚本，修改下面的部分：  
`'dir "'..path..'" /b'`  
让它在你的操作系统的命令行窗口中，能返回文件名和目录名列表   

### 使用方法
* 下载本.lua脚本
* 用任何文本编辑器打开
* 修改`title_macro_path`为你的达芬奇字幕模板的路径
* 修改`new_font` 和 `new_font_style`为你喜欢的字体和粗细
* 保存文件
* 前往达芬奇的Fusion页面
* 把这个脚本，拖拽到节点工作区
* 完成

脚本会不停的打开关闭cmd窗口，以获取子目录的目录和文件列表。看起来可能有点奇怪，但这是我找到的唯一能搞定这件事情的方法。  

这个脚本，并不会创建任何节点，当所有cmd窗口关闭，操作也就完成了。  

你可以打开达芬奇的脚本Console，查看运行详情。Console在顶部菜单：WorkSpace->Console中。然后，点击"Show Script Message"(齿轮图标)按钮，以显示详情。


