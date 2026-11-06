-- Supabase SQL Editor'de bu dosyanın tamamını çalıştır.
create table if not exists public.learning_progress (
  user_id uuid primary key references auth.users(id) on delete cascade,
  state jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.learning_progress enable row level security;
drop policy if exists "Users can read own learning progress" on public.learning_progress;
create policy "Users can read own learning progress" on public.learning_progress for select to authenticated using (auth.uid() = user_id);
drop policy if exists "Users can insert own learning progress" on public.learning_progress;
create policy "Users can insert own learning progress" on public.learning_progress for insert to authenticated with check (auth.uid() = user_id);
drop policy if exists "Users can update own learning progress" on public.learning_progress;
create policy "Users can update own learning progress" on public.learning_progress for update to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
