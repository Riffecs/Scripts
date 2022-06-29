# Scripts
Simple Scripts

## DeathCounter
This is a small death counter. It writes the new death into the file at each button press (which is set by the user). This allows Streamlabs or OBS to read this out and include it in the stream as text.

### Source Code 
Source Code: [DeathCounter Code](/Deathcounter/)

### Documentation
```python
while True:
    if keyboard.read_key() == counter:
        with open(pathsplit[len(pathsplit) - 1], "r+", encoding="utf-8") as container:
            runner = int(f.readline().replace(" ", "").replace("\x00", ""))+1
            print(f"Runner:{runner-1}\nType{type(runner)}", end="\n")
            container.seek(0)
            container.write(str(runner))
```
