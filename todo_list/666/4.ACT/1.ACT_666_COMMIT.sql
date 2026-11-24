--------------------------------------------------------------------------------
-- ACT - RUMO
-- Versão..........: 666
-- Objetivo........: Placas sul, AMVs mola FICO, Limites LRI, Maquinistas RDC
-- Data............: 03/11/2026
-- Desenvolvido por: Equipe Malha
--------------------------------------------------------------------------------

-- Alterar Seção para Owner Correspondente
ALTER SESSION SET CURRENT_SCHEMA=ACTALL;

--
--------------------------------------------------------------------------------
-- ACT --
--------------------------------------------------------------------------------
-- Alteração de limites da SB: LLMLRI
UPDATE ELEM_VIA
   SET EV_KM_INI  = 201.101
     , EV_KM_FIM  = 211.700
     , EV_KM_REF  = ROUND( ((201.101 + 211.700) / 2), 3)
 WHERE EV_NOM_MAC = 'LLMLRI';

-- Incluir SB: NFMK30
INSERT INTO ELEM_VIA (
EV_ID_ELM, EV_NOM_MAC, EV_KM_INI, EV_KM_FIM, EV_KM_REF, EV_IND_IN, EV_IND_OCP, EV_IND_SIT, EV_NUM_MAX_VGS, EV_CONT_BLO, EV_CONT_OCP, EV_IND_TP_SECAO, TE_ID_TP, EV_IND_CV)
VALUES ((SELECT MAX(EV_ID_ELM) + 1 FROM ELEM_VIA), 'NFMK30', 16.133, 30.000, ROUND( ((16.133 + 30.000) / 2), 3) , 'N', 'P', 'L', 70, 0, 0, 'S', 3, 'N');

-- Incluir SB: K30NAN
INSERT INTO ELEM_VIA (
EV_ID_ELM, EV_NOM_MAC, EV_KM_INI, EV_KM_FIM, EV_KM_REF, EV_IND_IN, EV_IND_OCP, EV_IND_SIT, EV_NUM_MAX_VGS, EV_CONT_BLO, EV_CONT_OCP, EV_IND_TP_SECAO, TE_ID_TP, EV_IND_CV)
VALUES ((SELECT MAX(EV_ID_ELM) + 1 FROM ELEM_VIA), 'K30NAN', 30.020, 40.178, ROUND( ((30.020 + 40.178) / 2), 3) , 'N', 'P', 'L', 70, 0, 0, 'S', 3, 'N');

-- Incluir SB: NIJK65
INSERT INTO ELEM_VIA (
EV_ID_ELM, EV_NOM_MAC, EV_KM_INI, EV_KM_FIM, EV_KM_REF, EV_IND_IN, EV_IND_OCP, EV_IND_SIT, EV_NUM_MAX_VGS, EV_CONT_BLO, EV_CONT_OCP, EV_IND_TP_SECAO, TE_ID_TP, EV_IND_CV)
VALUES ((SELECT MAX(EV_ID_ELM) + 1 FROM ELEM_VIA), 'NIJK65', 53.964, 64.985, ROUND( ((53.964 + 64.985) / 2), 3) , 'N', 'P', 'L', 70, 0, 0, 'S', 3, 'N');

-- Incluir SB: K65NCT
INSERT INTO ELEM_VIA (
EV_ID_ELM, EV_NOM_MAC, EV_KM_INI, EV_KM_FIM, EV_KM_REF, EV_IND_IN, EV_IND_OCP, EV_IND_SIT, EV_NUM_MAX_VGS, EV_CONT_BLO, EV_CONT_OCP, EV_IND_TP_SECAO, TE_ID_TP, EV_IND_CV)
VALUES ((SELECT MAX(EV_ID_ELM) + 1 FROM ELEM_VIA), 'K65NCT', 65.000, 76.111, ROUND( ((65.000 + 76.111) / 2), 3) , 'N', 'P', 'L', 70, 0, 0, 'S', 3, 'N');

-- Incluir SB: NCTK86
INSERT INTO ELEM_VIA (
EV_ID_ELM, EV_NOM_MAC, EV_KM_INI, EV_KM_FIM, EV_KM_REF, EV_IND_IN, EV_IND_OCP, EV_IND_SIT, EV_NUM_MAX_VGS, EV_CONT_BLO, EV_CONT_OCP, EV_IND_TP_SECAO, TE_ID_TP, EV_IND_CV)
VALUES ((SELECT MAX(EV_ID_ELM) + 1 FROM ELEM_VIA), 'NCTK86', 76.852, 85.982, ROUND( ((76.852 + 85.982) / 2), 3) , 'N', 'P', 'L', 70, 0, 0, 'S', 3, 'N');

-- Incluir SB: K86NMI
INSERT INTO ELEM_VIA (
EV_ID_ELM, EV_NOM_MAC, EV_KM_INI, EV_KM_FIM, EV_KM_REF, EV_IND_IN, EV_IND_OCP, EV_IND_SIT, EV_NUM_MAX_VGS, EV_CONT_BLO, EV_CONT_OCP, EV_IND_TP_SECAO, TE_ID_TP, EV_IND_CV)
VALUES ((SELECT MAX(EV_ID_ELM) + 1 FROM ELEM_VIA), 'K86NMI', 86.000, 93.967, ROUND( ((86.000 + 93.967) / 2), 3) , 'N', 'P', 'L', 70, 0, 0, 'S', 3, 'N');

-- Incluir SB: NUB423
INSERT INTO ELEM_VIA (
EV_ID_ELM, EV_NOM_MAC, EV_KM_INI, EV_KM_FIM, EV_KM_REF, EV_IND_IN, EV_IND_OCP, EV_IND_SIT, EV_NUM_MAX_VGS, EV_CONT_BLO, EV_CONT_OCP, EV_IND_TP_SECAO, TE_ID_TP, EV_IND_CV)
VALUES ((SELECT MAX(EV_ID_ELM) + 1 FROM ELEM_VIA), 'NUB423', 409.161, 423.503, ROUND( ((409.161 + 423.503) / 2), 3) , 'N', 'P', 'L', 70, 0, 0, 'S', 3, 'N');

-- Incluir SB: 423NCY
INSERT INTO ELEM_VIA (
EV_ID_ELM, EV_NOM_MAC, EV_KM_INI, EV_KM_FIM, EV_KM_REF, EV_IND_IN, EV_IND_OCP, EV_IND_SIT, EV_NUM_MAX_VGS, EV_CONT_BLO, EV_CONT_OCP, EV_IND_TP_SECAO, TE_ID_TP, EV_IND_CV)
VALUES ((SELECT MAX(EV_ID_ELM) + 1 FROM ELEM_VIA), '423NCY', 423.522, 428.090, ROUND( ((423.522 + 428.090) / 2), 3) , 'N', 'P', 'L', 70, 0, 0, 'S', 3, 'N');

--
-----------------------------------------------------------------------------------------------
-- FIM --
-----------------------------------------------------------------------------------------------