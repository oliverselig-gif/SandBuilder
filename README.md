# Trampler Workshop — SAND: Raiders of Sophie build sharing

Live: https://oliverselig-gif.github.io/SandBuilder/

Ein statisches Fan-Tool: Trampler-Blueprint-Editor (three.js) mit In-Game-Baurregeln,
Build-Sharing per TRMP1.-Codes, optional Community-Accounts über Supabase.

## Community-Backend aktivieren (Accounts, Build-Upload, Kommentare, Ratings)
1. Kostenloses Projekt auf https://supabase.com anlegen
2. SQL Editor → Inhalt von `supabase.sql` ausführen
3. Authentication → Providers → Email: aktiviert lassen
   (optional "Confirm email" ausschalten für schnelleres Testen)
4. Project Settings → API: `Project URL` und `anon public` Key kopieren
5. In `index.html` oben im Script den Block ausfüllen:
   const CLOUD={ url:'https://xxxx.supabase.co', anon:'eyJ...' };
6. `index.html` neu ins Repo hochladen — fertig.

Ohne diese Konfiguration läuft die Seite automatisch im Lokal-Modus
(Builds/Ratings/Kommentare im Browser des Besuchers, Teilen via Build-Codes).

## Hinweise
- Nur regelkonforme Builds (Core Components 5/5, keine Reliability-Fehler) können veröffentlicht werden.
- Der `anon` Key ist als öffentlicher Client-Key gedacht; Schreibrechte sind über Row-Level-Security abgesichert.
- Inoffizielles Fanprojekt. SAND: Raiders of Sophie © Hologryph / TowerHaus / tinyBuild.
