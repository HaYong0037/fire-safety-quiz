create table if not exists public.user_progress (
 user_id uuid not null references auth.users(id) on delete cascade,
 law text not null check (law in ('fire','standard')),
 data jsonb not null default '{}'::jsonb,
 updated_at timestamptz not null default now(),
 primary key(user_id,law)
);
alter table public.user_progress enable row level security;
create policy "read own progress" on public.user_progress for select to authenticated using(auth.uid()=user_id);
create policy "insert own progress" on public.user_progress for insert to authenticated with check(auth.uid()=user_id);
create policy "update own progress" on public.user_progress for update to authenticated using(auth.uid()=user_id) with check(auth.uid()=user_id);
grant select,insert,update on public.user_progress to authenticated;
