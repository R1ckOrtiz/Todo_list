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
--------------------------------------------------------------------------------
-- ADICIONAR/EXCLUIR NOVOS BLOCOS NA BLACKLIST --
--------------------------------------------------------------------------------
-- Excluir 'LRIL' da BlackList
DELETE FROM SRM.SRM_REST_BLOCK_BLACK_LIST WHERE MAP_BLOCK_NAME = 'LRIL';

-- Excluir 'NUBNCY' da BlackList
DELETE FROM SRM.SRM_REST_BLOCK_BLACK_LIST WHERE MAP_BLOCK_NAME = 'NUBNCY';

-- Excluir 'NIJNCT' da BlackList
DELETE FROM SRM.SRM_REST_BLOCK_BLACK_LIST WHERE MAP_BLOCK_NAME = 'NIJNCT';

-- Excluir 'NFMNAN' da BlackList
DELETE FROM SRM.SRM_REST_BLOCK_BLACK_LIST WHERE MAP_BLOCK_NAME = 'NFMNAN';

-- Excluir 'NCTNMI' da BlackList
DELETE FROM SRM.SRM_REST_BLOCK_BLACK_LIST WHERE MAP_BLOCK_NAME = 'NCTNMI';

-- Incluir 'NFMK30' na BlackList
INSERT INTO SRM.SRM_REST_BLOCK_BLACK_LIST SELECT DISTINCT MAP_BLOCK_NAME FROM SRM.VW_MAP_BLOCK WHERE MAP_BLOCK_NAME = 'NFMK30';

-- Incluir 'K30NAN' na BlackList
INSERT INTO SRM.SRM_REST_BLOCK_BLACK_LIST SELECT DISTINCT MAP_BLOCK_NAME FROM SRM.VW_MAP_BLOCK WHERE MAP_BLOCK_NAME = 'K30NAN';

-- Incluir 'NIJK65' na BlackList
INSERT INTO SRM.SRM_REST_BLOCK_BLACK_LIST SELECT DISTINCT MAP_BLOCK_NAME FROM SRM.VW_MAP_BLOCK WHERE MAP_BLOCK_NAME = 'NIJK65';

-- Incluir 'K65NCT' na BlackList
INSERT INTO SRM.SRM_REST_BLOCK_BLACK_LIST SELECT DISTINCT MAP_BLOCK_NAME FROM SRM.VW_MAP_BLOCK WHERE MAP_BLOCK_NAME = 'K65NCT';

-- Incluir 'NCTK86' na BlackList
INSERT INTO SRM.SRM_REST_BLOCK_BLACK_LIST SELECT DISTINCT MAP_BLOCK_NAME FROM SRM.VW_MAP_BLOCK WHERE MAP_BLOCK_NAME = 'NCTK86';

-- Incluir 'K86NMI' na BlackList
INSERT INTO SRM.SRM_REST_BLOCK_BLACK_LIST SELECT DISTINCT MAP_BLOCK_NAME FROM SRM.VW_MAP_BLOCK WHERE MAP_BLOCK_NAME = 'K86NMI';

-- Incluir 'NUB423' na BlackList
INSERT INTO SRM.SRM_REST_BLOCK_BLACK_LIST SELECT DISTINCT MAP_BLOCK_NAME FROM SRM.VW_MAP_BLOCK WHERE MAP_BLOCK_NAME = 'NUB423';

-- Incluir '423NCY' na BlackList
INSERT INTO SRM.SRM_REST_BLOCK_BLACK_LIST SELECT DISTINCT MAP_BLOCK_NAME FROM SRM.VW_MAP_BLOCK WHERE MAP_BLOCK_NAME = '423NCY';

--
--------------------------------------------------------------------------------
-- FIM --
--------------------------------------------------------------------------------