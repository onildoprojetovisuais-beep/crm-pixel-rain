-- ============================================================
-- MIGRATION: Campos de Research Pré-Contato
-- CRM Pixel Rain Agency
-- Data: 11/06/2026
-- Execute no Supabase SQL Editor (Project > SQL Editor > New query)
-- ============================================================
-- Adiciona 5 campos de research na tabela leads:
--   gancho              → texto do gancho identificado
--   post_destaque       → post com mais engajamento
--   avaliacao_google    → avaliação mais específica no Google
--   responde_avaliacoes → booleano S/N
--   destaque_agendamento → booleano S/N
-- ============================================================

ALTER TABLE leads
  ADD COLUMN IF NOT EXISTS gancho               TEXT,
  ADD COLUMN IF NOT EXISTS post_destaque        TEXT,
  ADD COLUMN IF NOT EXISTS avaliacao_google     TEXT,
  ADD COLUMN IF NOT EXISTS responde_avaliacoes  BOOLEAN NOT NULL DEFAULT FALSE,
  ADD COLUMN IF NOT EXISTS destaque_agendamento BOOLEAN NOT NULL DEFAULT FALSE;
