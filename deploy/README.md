# Trampler Workshop — Deployment

Statisches Ein-Datei-Tool (index.html). Kein Server, keine Datenbank nötig.

## Option A: Netlify Drop (schnellster Weg, ~1 Minute)
1. https://app.netlify.com/drop öffnen (kostenloses Konto nötig)
2. Diesen `deploy`-Ordner ins Browserfenster ziehen
3. Fertig — du bekommst sofort eine URL wie https://xyz.netlify.app zum Teilen

## Option B: GitHub Pages (dauerhaft, kostenlos)
1. Auf github.com ein neues öffentliches Repo anlegen (z. B. "trampler-workshop")
2. "Add file" → "Upload files" → index.html hochladen → Commit
3. Repo → Settings → Pages → Source: "Deploy from a branch" → Branch: main, Ordner: / (root) → Save
4. Nach ~1 Minute erreichbar unter https://DEINNAME.github.io/trampler-workshop/

## Option C: Vercel
1. vercel.com → New Project → Ordner hochladen (oder Repo importieren)

## Hinweise
- Modul-Icons werden von probonk.com geladen, three.js vom Cloudflare-CDN — beides über HTTPS, funktioniert auf jedem Host.
- Builds, Ratings und Kommentare liegen im localStorage des jeweiligen Besuchers (lokaler Prototyp).
  Builds teilen funktioniert über die TRMP1.-Build-Codes.
- Für echte gemeinsame Kommentare/Ratings wäre ein kleines Backend nötig (z. B. Supabase, kostenloser Tier).
