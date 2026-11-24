--------------------------------------------------------------------------------
-- Validação de Restrições - RUMO
-- Versão..........: 666
-- Objetivo........: Placas sul, AMVs mola FICO, Limites LRI, Maquinistas RDC
-- Data............: 03/11/2026
-- Desenvolvido por: Equipe Malha
--------------------------------------------------------------------------------

-- Alterar Seção para Owner Correspondente
ALTER SESSION SET CURRENT_SCHEMA=ATW_QA2;


--
--------------------------------------------------------------------------------
-- VALIDAÇÃO DE INTERDIÇÕES, OCUPAÇÕES E LICENÇAS EM SBs/CHAVES --
--------------------------------------------------------------------------------
EXEC PRC_ANALISABASE('LRIL');
EXEC PRC_ANALISABASE('NUBNCY');
EXEC PRC_ANALISABASE('NIJNCT');
EXEC PRC_ANALISABASE('NFMNAN');
EXEC PRC_ANALISABASE('NCTNMI');
EXEC PRC_ANALISABASE('LLMLRI');

--
--------------------------------------------------------------------------------
-- FIM --
--------------------------------------------------------------------------------