--------------------------------------------------------------------------------
-- SRM - RUMO
-- Versão..........: 666
-- Objetivo........: Placas sul, AMVs mola FICO, Limites LRI, Maquinistas RDC
-- Data............: 03/11/2026
-- Desenvolvido por: Equipe Malha
--------------------------------------------------------------------------------
--
-- Alterar Seção para Owner Correspondente
ALTER SESSION SET CURRENT_SCHEMA=SRM;
--

-- Criar as tabelas de backup
EXECUTE CRIAR_BACKUPS('666');

-- Atualizar sequences
EXECUTE ATUALIZAR_SEQUENCES;

-- Atualizar sequences MALHA_VERSAO
EXECUTE ATUALIZAR_MALHA_VERSAO_SEQ;

-- Controle de versão
ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YYYY';
INSERT INTO MALHA_VERSAO VALUES (MALHA_VERSAO_SEQ_ID.NEXTVAL, '666', 'Placas sul, AMVs mola FICO, Limites LRI, Maquinistas RDC', '03/11/2026', '03/11/2026', NULL ,SYSDATE, 1, 0);

--
--------------------------------------------------------------------------------
-- FIM --
--------------------------------------------------------------------------------