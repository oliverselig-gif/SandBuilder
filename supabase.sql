-- Trampler Workshop — community backend setup (run once in Supabase SQL editor)

create table if not exists builds(
  id uuid primary key default gen_random_uuid(),
  owner uuid references auth.users not null,
  author text not null,
  name text not null,
  cat text not null default 'Solo',
  descr text default '',
  chassis text,
  cx int default 0, cy int default 0,
  mods jsonb not null default '[]',
  created_at timestamptz default now()
);
create table if not exists comments(
  id bigint generated always as identity primary key,
  build_id uuid references builds on delete cascade not null,
  owner uuid references auth.users not null,
  author text not null,
  body text not null,
  created_at timestamptz default now()
);
create table if not exists ratings(
  build_id uuid references builds on delete cascade not null,
  user_id uuid references auth.users not null,
  stars int not null check (stars between 1 and 5),
  primary key(build_id, user_id)
);

alter table builds enable row level security;
alter table comments enable row level security;
alter table ratings enable row level security;

create policy "builds are public"      on builds   for select using (true);
create policy "publish own builds"     on builds   for insert with check (auth.uid() = owner);
create policy "delete own builds"      on builds   for delete using (auth.uid() = owner);
create policy "comments are public"    on comments for select using (true);
create policy "comment when signed in" on comments for insert with check (auth.uid() = owner);
create policy "delete own comments"    on comments for delete using (auth.uid() = owner);
create policy "ratings are public"     on ratings  for select using (true);
create policy "rate when signed in"    on ratings  for insert with check (auth.uid() = user_id);
create policy "update own rating"      on ratings  for update using (auth.uid() = user_id);
