--------------------------------------------------------------------------------
-- Rollback ACT - RUMO
-- Versão..........: 666
-- Objetivo........: Placas sul, AMVs mola FICO, Limites LRI, Maquinistas RDC
-- Data............: 03/11/2026
-- Desenvolvido por: Equipe Malha
--------------------------------------------------------------------------------

-- Alterar Seção para Owner Correspondente
ALTER SESSION SET CURRENT_SCHEMA=ACTALL;

--
--------------------------------------------------------------------------------
-- ROLLBACK - ACT --
--------------------------------------------------------------------------------
-- Rollback da alteração da SB 'LLMLRI'
UPDATE ELEM_VIA
   SET EV_KM_INI = 199.956
     , EV_KM_FIM  = 210.5
     , EV_KM_REF  = ROUND( ((199.956 + 210.5) / 2), 3)
 WHERE EV_NOM_MAC = 'LLMLRI';

-- Rollback da inclusão da SB 'NFMK30'
DELETE FROM ELEM_VIA WHERE EV_NOM_MAC = 'NFMK30';

-- Rollback da inclusão da SB 'K30NAN'
DELETE FROM ELEM_VIA WHERE EV_NOM_MAC = 'K30NAN';

-- Rollback da inclusão da SB 'NIJK65'
DELETE FROM ELEM_VIA WHERE EV_NOM_MAC = 'NIJK65';

-- Rollback da inclusão da SB 'K65NCT'
DELETE FROM ELEM_VIA WHERE EV_NOM_MAC = 'K65NCT';

-- Rollback da inclusão da SB 'NCTK86'
DELETE FROM ELEM_VIA WHERE EV_NOM_MAC = 'NCTK86';

-- Rollback da inclusão da SB 'K86NMI'
DELETE FROM ELEM_VIA WHERE EV_NOM_MAC = 'K86NMI';

-- Rollback da inclusão da SB 'NUB423'
DELETE FROM ELEM_VIA WHERE EV_NOM_MAC = 'NUB423';

-- Rollback da inclusão da SB '423NCY'
DELETE FROM ELEM_VIA WHERE EV_NOM_MAC = '423NCY';

--
--------------------------------------------------------------------------------
-- FIM --
--------------------------------------------------------------------------------