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
-- HIGIENIZAÇÃO NA BASE DE VMAs SEM PERFIL DE TREM VINCULADO
--------------------------------------------------------------------------------
DELETE FROM MAP_MAX_SPEED VMA
WHERE  NOT EXISTS (SELECT MAP_MAX_SPEED_ID
                   FROM MAP_MAX_SPEED_TRAIN_CLASS
                   WHERE MAP_MAX_SPEED_ID = VMA.MAP_MAX_SPEED_ID);

--------------------------------------------------------------------------------
-- ATUALIZA GRUPO --
--------------------------------------------------------------------------------
EXEC ATUALIZA_GROUP('LRIL','LLMLRI');
EXEC ATUALIZA_GROUP('NFMNAN','NFMK30');
EXEC ATUALIZA_GROUP('NFMNAN','K30NAN');
EXEC ATUALIZA_GROUP('NIJNCT','NIJK65');
EXEC ATUALIZA_GROUP('NIJNCT','K65NCT');
EXEC ATUALIZA_GROUP('NCTNMI','NCTK86');
EXEC ATUALIZA_GROUP('NCTNMI','K86NMI');
EXEC ATUALIZA_GROUP('NUBNCY','NUB423');
EXEC ATUALIZA_GROUP('NUBNCY','423NCY');

--------------------------------------------------------------------------------
-- ATUALIZA REGIÃO --
--------------------------------------------------------------------------------
EXEC ATUALIZACAO_EQUIPE_REGIAO('LRIL','LLMLRI');
EXEC ATUALIZACAO_EQUIPE_REGIAO('NFMNAN','NFMK30');
EXEC ATUALIZACAO_EQUIPE_REGIAO('NFMNAN','K30NAN');
EXEC ATUALIZACAO_EQUIPE_REGIAO('NIJNCT','NIJK65');
EXEC ATUALIZACAO_EQUIPE_REGIAO('NIJNCT','K65NCT');
EXEC ATUALIZACAO_EQUIPE_REGIAO('NCTNMI','NCTK86');
EXEC ATUALIZACAO_EQUIPE_REGIAO('NCTNMI','K86NMI');
EXEC ATUALIZACAO_EQUIPE_REGIAO('NUBNCY','NUB423');
EXEC ATUALIZACAO_EQUIPE_REGIAO('NUBNCY','423NCY');

--------------------------------------------------------------------------------
-- INATIVA SBs NA MAP BLOCK --
--------------------------------------------------------------------------------
-- Inativar SB 'LRIL'
EXEC SRM.DELETE_BLOCK('LRIL');

-- Inativar SB 'NUBNCY'
EXEC SRM.DELETE_BLOCK('NUBNCY');

-- Inativar SB 'NIJNCT'
EXEC SRM.DELETE_BLOCK('NIJNCT');

-- Inativar SB 'NFMNAN'
EXEC SRM.DELETE_BLOCK('NFMNAN');

-- Inativar SB 'NCTNMI'
EXEC SRM.DELETE_BLOCK('NCTNMI');

--
--------------------------------------------------------------------------------
-- FIM --
--------------------------------------------------------------------------------