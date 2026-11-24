--------------------------------------------------------------------------------
-- PAINEL - RUMO
-- Versão..........: 666
-- Objetivo........: Placas sul, AMVs mola FICO, Limites LRI, Maquinistas RDC
-- Data............: 03/11/2026
-- Desenvolvido por: Equipe Malha
--------------------------------------------------------------------------------

-- Alterar Seção para Owner Correspondente
ALTER SESSION SET CURRENT_SCHEMA=ATW_QA2;

--------------------------
--  ATUALIZAR PAINÉIS   --
--------------------------
EXEC SP_ATUALIZAR_PAINEIS;

--
--------------------------------------------------------------------------------
-- FIM --
--------------------------------------------------------------------------------