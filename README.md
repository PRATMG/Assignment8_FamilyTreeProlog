# Family Tree in Prolog

This project represents a simple family tree using the Prolog programming language. It defines basic facts about family members (such as parent relationships and gender), and uses rules to derive more complex relationships like grandparents, siblings, cousins, and descendants.

## 📁 Files

- `family_tree.pl`: Main Prolog program with facts and rules.
- `queries.txt`: Example queries and expected outputs for testing.
- `README.md`: Project description and usage instructions.

## 🛠 How to Run the Project

### 1. Install SWI-Prolog (if not already installed)

```bash
brew install swi-prolog
```

Or visit [https://www.swi-prolog.org/Download.html](https://www.swi-prolog.org/Download.html)

### 2. Open Terminal and Navigate to the Project Folder

```bash
cd path/to/FamilyTreeProlog
```

### 3. Start SWI-Prolog

```bash
swipl
```

### 4. Load the Program

```prolog
?- [family_tree].
```

### 5. Run Queries

```prolog
?- parent(john, X).
?- grandparent(john, X).
?- sibling(mary, X).
?- descendant(bob, john).
?- cousin(bob, tom).
```

Use `;` to see more results. Type `halt.` to exit.

## 📎 Notes

- This project is part of an academic assignment exploring logical inference and recursion using Prolog.
- The structure is kept minimal and clean for learning and demonstration purposes.

## 🔗 GitHub Link

> Replace this with your actual GitHub repo URL once uploaded.
