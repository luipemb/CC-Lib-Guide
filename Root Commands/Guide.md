## **V0.5R** -- Latest version

# <p align="center"> Starting with CC:Lib </p>
## <p align="center"> Root Commands - Utils and basics - </p>


<details>
<summary><h3>import(lib)</h3></summary>

- Imports files from a setted repository.  
  > import() >> Imports everything from the repository  
  > import(x) >> Imports a file (x) from the repository. Returns error if it doesn't exist.

</details>

---

<details>
<summary><h3>unload(lib)</h3></summary>

- Unloads a registred file (loadedlibs) from the system.
  > unload(OptLib) >> Unloads OptLib.lua from the fs.  
  > unload() >> Unloads every file from the fs.

</details>

---

<details>
<summary><h3>libraries()</h3></summary>

- Shows all importable libraries from the setted repository.  
  > libraries() >> Prints the libraries.

</details>

---

<details>
<summary><h3>loadedlibs()</h3></summary>

- Prints all the loaded libraries (files) in the system.
  > loadedlibs() >> Prints the loaded libraries.

</details>

---

<details>
<summary><h3>reimport(lib)</h3></summary>

- Reimports loaded files.
  > reimport(OptLib) >> Reimported OptLib.  
  > reimport() >> Reimports all loaded files.

</details>

---

<details>
<summary><h3>collect(lib, func)</h3></summary>

- Collects a single function (instead of the whole file).
  > collect(OptLib, 'tcolor') >> Loads the function 'tcolor' only.

</details>

---

<details>
<summary><h3>set(var, bool)</h3></summary>

- Sets an existing variable to a bool state.
  > set("stablecheck", false) >> Sets the existing variable "stablecheck" to false.

</details>

---

<details>
<summary><h3>[BETA] autoimport(file, t)</h3></summary>

- Autoimports a file in every session. 
  > autoimport(filex) >> Autoimports "filex" in every session start. It's deactivated by default.   
  > autoimport(true) >> Activates the automatic importing.   
  > autoimport(false) >> Deactivates the automatic importing.   
  > autoimport(filex, true) >> Activates the automatic importing and imports the file (All in one line basically).

</details>

---

<details>
<summary><h3>[BETA] file(file, act, v, t)</h3></summary>

- Manages CC:Tweaked file system in one line.
- Basics:
  - **"file"** - Is the file's name where you will perform the change.   
  - **"act"** - Means what you are going to perform (write, read, etc).   
  - **"v"** - Means what will be used for the action (usually strings).   
  - **"t"** - Stands for "table". In case you are going to perform the change in a specific table, you should mention its name.   
  - **(Special) this()** - When performing changes in unnmaed tables. Still have limitations, and I'm aware of them. It will definetly change in the next update.   
  - Note: Some aspects may be a bit confusing. Everything will be simplified in further updates.   

- Variables for "act":
  - **w -- Write**   
  - **a -- Add**   
  - **rmv -- Remove**   
  - **c -- Clean/Create**   
  - **r -- Read**   
  - **del -- Delete**
 
- Before starting: Creating a file
  ```
  -- If you try to write in a file that doesn't exists, the system will ask if you want to create one.
   -------------------------------------------
  > file("fileX", w, "hello") -- "filex" doesn't exist. The system will ask for the creation of the file.
  >> File doesn't exist. Create one? (y/n)
  >> y
  ...
  -------------------------------------------
  > file("filex", c) -- Won't ask, just creates the file.
    But in case the file already exists, it will clean everything inside.
  ```

- Starting: Creating and writing something:
  ```
  file("newfile", c) -- Created the file named "newfile"   
  file("newfile", w, "hello") -- Wrote "hello" in the file.   
  local content = file("newfile", r) -- Read the file and returned its serialized value.
  ```   
- Writing, adding, removing   
  ```
  > file("newfile", w, "hello") -- Wrote "hello" in the file.
      ============ newfile =====================
      "hello"
      ==========================================
  > file("newfile", a, "hi") -- Added "hi"
      ============ newfile =====================
      "hello"
      "hi"
      ==========================================
  > file("newfile", w, "nothing") -- Wrote "nothing"
      ============ newfile =====================
      "nothing"
      ==========================================
  > file("newfile", rmv, "nothing") -- Removed "nothing"
      ============ newfile =====================
      ==========================================
  ```
- Using "this()"
  ```
  -- Suppose that "newfile" has an unnamed table inside.
      ============ newfile =====================
      {}
      ==========================================
  > file("newfile", w, this("hello")) -- Wrote "hello" inside the unnamed table
      ============ newfile =====================
      {
      "hello"
      }
      ==========================================
  > file("newfile", rmv, this("hello")) -- Removed "hello" from the table
      ============ newfile =====================
      {}
      ==========================================
  ```
- Deleting and misc
    ```
    > file("newfile", del) -- Deleted the file
    > file("newfile", w, "hello") -- File doesn't exist.
    >> File doesn't exist. Create one? (y/n)
    >> n
    >> ...
    --------------------------------------------------------
    > file("newfile", r) -- Reading the file
        ============ newfile =====================
        {}
        ==========================================
    -- In this case, the returned value will be unserialized.
    ```

</details>

---

## <p align="center"> Root Commands - Setting your repository - </p>

<details>
<summary><h3>setrepo(creator, repo, scheck, branch)</h3></summary>

- Defines a new repository.  
- _**creator**_ and _**repo**_: the username and repository.  
- _(Optional) **scheck**_: If true, the import function will only load files that are ended in "S". If false, the import function will load any file.  
- _(Optional) **branch**_: sets a new branch other than "main".
  ```
  > setrepo("userX", "repoX") >> Setted the repo to userX, repoX.  
  > setrepo("userX", "repoX", true) >> Only imports files ended in "S".  
  > setrepo("userX", "repoX", false, "X") >> Imports from branch X
  ```
- By https:
  ```
  > setrepo("https://github.com/luipemb/CC-Lib-Guide")
  ```
- To set back to default:
  ```
  > setrepo() >> Sets back to default.
  ```
</details>

---





