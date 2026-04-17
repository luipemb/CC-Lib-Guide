## **V0.4R** -- Latest version

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

## <p align="center"> Root Commands - Setting your repository - </p>

<details>
<summary><h3>setrepo(creator, repo, scheck, branch)</h3></summary>

- Defines a new repository.  
- _**creator**_ and _**repo**_: the username and repository.  
- _(Optional) **scheck**_: If true, the import function will only load files that are ended in "S". If false, the import function will load any file.  
- _(Optional) **branch**_: sets a new branch other than "main".
  > setrepo("userX", "repoX") >> Setted the repo to userX, repoX.  
  > setrepo("userX", "repoX", true) >> Only imports files ended in "S".  
  > setrepo("userX", "repoX", false, "X") >> Imports from branch X

- To set back to default:
  > setrepo() >> Sets back to default.

</details>

---





