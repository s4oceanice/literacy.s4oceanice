# OCEAN:ICE CI/CD GUIDE

Per iniziare occorre clonare il repository da GitHub, che si trova all'indirizzo seguente:

[https://github.com/s4oceanice/literacy.s4oceanice](https://github.com/s4oceanice/literacy.s4oceanice)

E' possibile clonare tramite l'applicazione GitHub Desktop o dal terminale.

### Clonare con GitHub Desktop:

Dalla pagina del repository premere sul bottone verde  
> <> Code

 e selezionare

 > Open with GitHub Desktop

 Questo permetterà di clonare in locale il repository, dove effettuare le modifiche.

 ### Clonare dal terminale:

Se si ha Git installato si può clonare il repository usando il comando seguente:

> git clone https://github.com/s4oceanice/literacy.s4oceanice.git

## Struttura del repository

In locale ora avremo una cartella strutturata così:

```
LITERACY.S4OCEANICE
├──.github/workflows
│
├──literacy.oceanice/
│  ├── _config.yml
│  ├── _toc.yml
│  ├── intro.md
│  ├── book-assets/
│  │    └── logo.png
│  ├── chapters/
│  │   ├── chapter1/
│  │   │ 	├──chapter1.md
│  │   │ 	└── chapter1-assets/
│  │   │  	     └── image1.png
│  │   ├── chapter2/
│  │   |    ├── chapter2.ipynb
│  │   |    └── chapter2-assets/
│  |
│  ├── references.bib
│  └── requirements.txt
│
├──.gitignore
├──README.md
├──requirements.txt
...
```

La cartella .github/workkflows  contiene i file .yml necessari ad attivare ed eseguire le Github Actions.  
Nella cartella literacy.oceanice si trova invece il contenuto vero e proprio del Jupyter Book.

## Testare in locale il Jupyter Book

Per vedere l'effetto delle modifiche effettuate ai file in locale bisognerà:

1. Creazione ambiente virtuale per Python:
    Con Visual Studio Code premere Ctrl + Shift + P e selezionare la voce

    > Python: Create Environment...

    selezionare

    > Venv

    selezionare il Python interpreter, poi spuntare la voce 

    > requirements.txt

    e confermare

2. Build del book. Da terminale eseguire:

    > jupyter-book build ./literacy.oceanice

    Questo creerà una cartella /_build all'interno di literacy.oceanice/

3. Lanciare il Jupyter Book in locale

    Se non già fatto in precedenza, installare l'estensione di Visual Studio Code chiamata Live Server.

    Selezionare il file index.html all'interno di literacy.oceanice/_build/html/

    Premere su Go Live, in basso a destra nella schermata di VSC.

    Questo aprirà nel browser il Jupyter Book

## CI/CD con Github Actions

Il Jupyter Book di OCEAN:ICE è pubblicato ai seguenti indirizzi:

- [https://s4oceanice.github.io/literacy.s4oceanice](https://s4oceanice.github.io/literacy.s4oceanice) (branch 'test')
- [https://literacy.s4oceanice.eu/](https://literacy.s4oceanice.eu/) (branch 'main')

### Deploy su GitHub Pages

Una volta effettuate delle modifiche ai file,
che si vogliono vedere riflesse su [https://s4oceanice.github.io/literacy.s4oceanice](https://s4oceanice.github.io/literacy.s4oceanice),
si può attivare il deploy automatico eseguendo dal terminale i comandi:

1. > git checkout test

per selezionare la branch 'test'

2. > git add .

per aggiungere le modifiche alla fase di staging

3. > git commit -m 'messaggio di commit'

per creare una commit contenente le nostre modifiche.
Il messaggio di commit permetterà di tenere traccia delle modifiche ed è obbligatorio.

4. > git push -u origin test

questo commando invierà le nostre modifiche al repository online e attiverà il deploy automatico sul servizio di hosting di GitHub, Pages.

Si può ora verificare e seguire il funzionamento del workflow nella sezione Actions del repository online:  
[https://github.com/s4oceanice/literacy.s4oceanice/actions](https://github.com/s4oceanice/literacy.s4oceanice/actions)

### Deploy su literacy.s4oceanice.eu

Per pubblicare le modifiche su litercy.s4oceanice.eu bisognerà creare una Pull Request su GitHub.

Le modifiche dovranno essere state inviate (git add, git commit, git push) su una branch che può essere 'test' o altre create appositamente.

Da [https://github.com/s4oceanice/literacy.s4oceanice](https://github.com/s4oceanice/literacy.s4oceanice) bisognerà selezionare la branch dove si sono inviate le modifiche, nel nostro esempio 'test'.  
(Di default la branch selezionata aprendo il repository online è 'main')

Una volta selezionata la branch si dovrà premere su

> Contribute

poi

> Open pull request  

> Create pull request

Se in possesso delle credenziali necessario è possibile effettuare la merge della pull request premendo

> merge pull request

e

> Confirm merge

A questo punto (o quando la pull request sarà accettata) verrà azionato automaticamente il workflow delle GitHub Actions che effettuerà il deploy su literacy.s4oceanice.eu

#### Note:

I Google Colab in link nei capitoli non vengono automaticamente aggiornati.

Se si effettuano modifiche al codice nei file .ipynb sarà necessario modificare a mano i Colab sul Drive di s4oceanice@gmail.com 
