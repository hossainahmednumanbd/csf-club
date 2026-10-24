-- Planned Supabase production schema. NOT connected to demo Android app.
create table if not exists public.club_records (
 id uuid primary key default gen_random_uuid(),
 section text not null check(section in ('members','advisors','founders','committee','donations','expenses','notices','events','gallery')),
 title text not null,
 detail text not null default '',
 amount numeric(12,2) not null default 0,
 created_at timestamptz not null default now()
);
create table if not exists public.club_admins (
 user_id uuid primary key references auth.users(id) on delete cascade
);
alter table public.club_records enable row level security;
alter table public.club_admins enable row level security;
create policy "public can read records" on public.club_records for select using (true);
create policy "admins may add records" on public.club_records for insert to authenticated with check (exists(select 1 from public.club_admins a where a.user_id = auth.uid()));
create policy "admins may edit records" on public.club_records for update to authenticated using (exists(select 1 from public.club_admins a where a.user_id = auth.uid())) with check (exists(select 1 from public.club_admins a where a.user_id = auth.uid()));
create policy "admins may delete records" on public.club_records for delete to authenticated using (exists(select 1 from public.club_admins a where a.user_id = auth.uid()));
-- Admin list should not be readable publicly. Assign initial admin manually in SQL editor.
