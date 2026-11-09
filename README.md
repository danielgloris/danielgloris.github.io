# Website von Daniel Gloris

Die englische Website wird mit Jekyll aus den Dateien in diesem Repository gebaut.

## Lokale Vorschau

Auf dem Mac im Finder `scripts/Website-Vorschau.command` doppelklicken. Die Startdatei öffnet [die lokale Vorschau](http://127.0.0.1:4000/) und startet den Server, falls er noch nicht läuft. Wenn dabei ein Terminalfenster mit dem Server erscheint, offen lassen. Mit Ctrl+C lässt sich der Server dort beenden.

Alternativ im Projektordner `npm run dev` ausführen. Für eine neue lokale Installation mit Ruby und Bundler zuerst `ruby -S bundle install` ausführen. Mit `npm run build` wird die Website ohne laufenden Server gebaut. Diese Befehle veröffentlichen nichts.

Nach dem Speichern einer Datei die Browserseite neu laden. Nach Änderungen in `_config.yml` den Vorschau-Server neu starten.

## Inhalte bearbeiten

| Was du ändern möchtest | Datei oder Ordner |
| --- | --- |
| Startseite und Vorstellung | [`_pages/about.md`](_pages/about.md) |
| Text der Forschungsseite | [`_pages/research.md`](_pages/research.md) |
| Veröffentlichte Arbeiten | [`_data/publications.yml`](_data/publications.yml) |
| Eingereichte Manuskripte | [`_data/manuscripts.yml`](_data/manuscripts.yml) |
| Replikationsmaterial und Platzhalter während des Reviews | [`_data/replication.yml`](_data/replication.yml); Seitenaufbau in [`_pages/replication.html`](_pages/replication.html) |
| Vorträge | [`_data/talks.yml`](_data/talks.yml) |
| Thematische Übersicht der Lehre | [`_data/teaching.yml`](_data/teaching.yml) |
| Name, Position, Universität, Forschungsinteressen, Kontaktdaten, Profil-Links und Stationen im CV | [`_data/profile.yml`](_data/profile.yml) |
| Abschnittsaufbau des Web-CV | [`_pages/cv.md`](_pages/cv.md) |
| Text und Aufbau der Kontaktseite | [`_pages/contact.md`](_pages/contact.md) |
| Reihenfolge und Namen der Menüpunkte | [`_data/navigation.yml`](_data/navigation.yml) |
| Porträt | [`images/daniel-gloris.jpg`](images/daniel-gloris.jpg) |
| CV zum Download | [`files/CV_DanielGloris.pdf`](files/CV_DanielGloris.pdf) |

In `_data` stehen die Angaben, die die Website automatisch in ihre Listen einsetzt. Für eine neue Veröffentlichung kannst du in `_data/publications.yml` einen vorhandenen Block kopieren und Titel, Jahr und DOI anpassen. Behalte dabei die Einrückung bei. Die Dateien `_pages/publications.html`, `_pages/talks.html` und `_pages/teaching.html` bestimmen, wie diese Listen auf den jeweiligen Seiten angezeigt werden.

In `_data/profile.yml` erscheinen alle Einträge unter `positions` im Web-CV. Mit `homepage: true` zeigst du eine Position zusätzlich auf der Startseite an.

Sobald ein Replikationspaket verfügbar ist, ersetze `entries: []` in `_data/replication.yml` durch eine Liste wie diese. Der Platzhalter verschwindet, sobald ein Eintrag hinterlegt ist.

```yaml
entries:
  - title: "Titel der Publikation"
    repository: "OSF"
    url: "Hier die vollständige Projekt- oder Datensatz-URL einsetzen"
```

Wenn du Porträt oder PDF ersetzt, behalte den Dateinamen bei oder passe den Eintrag `portrait` bzw. `cv` in `_data/profile.yml` an.

## Layout und Farben

- [`_layouts/academic.html`](_layouts/academic.html) bestimmt den Aufbau aller Seiten: Kopfzeile, Navigation, Profilspalte, Inhaltsbereich und Fußzeile.
- [`assets/css/academic.css`](assets/css/academic.css) bestimmt das Aussehen: Farben, Schrift, Abstände, Spaltenbreiten und mobile Darstellung.
- Die Farben stehen ganz oben in `:root`. `--paper` ist der Seitenhintergrund, `--surface` die Farbe von Kopf- und Fußzeile, `--line` die Farbe der Trennlinien, `--accent` die allgemeine Linkfarbe und `--doi-link` das Blau der DOI-Links.
- Die Bildgröße steht unter `.author-profile` bei `--portrait-size`. Kleinere Größen für schmale Fenster stehen in den `@media`-Abschnitten. Den Bildausschnitt bestimmt `object-position` unter `.author-avatar`.
- In [`_includes/`](_includes/) liegen wiederverwendete Bausteine, etwa die Profil-Links und die Anzeige von Veröffentlichungen, Lehrthemen und CV-Einträgen.

## Technische Dateien

- [`_config.yml`](_config.yml) enthält den Website-Titel, die URL und die Build-Einstellungen.
- `Gemfile` und `Gemfile.lock` halten die Ruby-Abhängigkeiten fest. `package.json` enthält die Befehle für Build und Vorschau. `assets/fonts` und `assets/css/academicons.min.css` werden für die Profil-Icons verwendet.
- `_site` enthält die automatisch erzeugte Vorschau. Jekyll legt seinen Cache in `.jekyll-cache` ab; lokal installierte Ruby-Pakete können in `vendor` liegen. Diese Ordner werden nicht von Git verwaltet und sind nicht für manuelle Inhaltsänderungen gedacht.

Das Projekt basiert auf [Academic Pages](https://github.com/academicpages/academicpages.github.io). Die ursprüngliche Lizenz steht in [`LICENSE`](LICENSE).
