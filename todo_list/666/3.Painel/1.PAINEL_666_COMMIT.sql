--------------------------------------------------------------------------------
-- PAINEL - RUMO
-- Versão..........: 666
-- Objetivo........: Placas sul, AMVs mola FICO, Limites LRI, Maquinistas RDC
-- Data............: 03/11/2026
-- Desenvolvido por: Equipe Malha
--------------------------------------------------------------------------------

-- Alterar Seção para Owner Correspondente
ALTER SESSION SET CURRENT_SCHEMA=ATW_QA2;


--------------------------------------------------------------------------------
-- Empresa: RUMO
--------------------------------------------------------------------------------
INSERT INTO PROJ_CIA_SHAREDELEMENT VALUES (1, (SELECT EM_ID_EM FROM ELEMENT WHERE EM_COD_EM = 'NFMK30' AND EM_IND_ELE = 'Y'), 'NFMK30', 'Y', SYSDATE);
INSERT INTO PROJ_CIA_SHAREDELEMENT VALUES (1, (SELECT EM_ID_EM FROM ELEMENT WHERE EM_COD_EM = 'K30NAN' AND EM_IND_ELE = 'Y'), 'K30NAN', 'Y', SYSDATE);
INSERT INTO PROJ_CIA_SHAREDELEMENT VALUES (1, (SELECT EM_ID_EM FROM ELEMENT WHERE EM_COD_EM = 'NIJK65' AND EM_IND_ELE = 'Y'), 'NIJK65', 'Y', SYSDATE);
INSERT INTO PROJ_CIA_SHAREDELEMENT VALUES (1, (SELECT EM_ID_EM FROM ELEMENT WHERE EM_COD_EM = 'K65NCT' AND EM_IND_ELE = 'Y'), 'K65NCT', 'Y', SYSDATE);
INSERT INTO PROJ_CIA_SHAREDELEMENT VALUES (1, (SELECT EM_ID_EM FROM ELEMENT WHERE EM_COD_EM = 'NCTK86' AND EM_IND_ELE = 'Y'), 'NCTK86', 'Y', SYSDATE);
INSERT INTO PROJ_CIA_SHAREDELEMENT VALUES (1, (SELECT EM_ID_EM FROM ELEMENT WHERE EM_COD_EM = 'K86NMI' AND EM_IND_ELE = 'Y'), 'K86NMI', 'Y', SYSDATE);
INSERT INTO PROJ_CIA_SHAREDELEMENT VALUES (1, (SELECT EM_ID_EM FROM ELEMENT WHERE EM_COD_EM = 'NUB423' AND EM_IND_ELE = 'Y'), 'NUB423', 'Y', SYSDATE);
INSERT INTO PROJ_CIA_SHAREDELEMENT VALUES (1, (SELECT EM_ID_EM FROM ELEMENT WHERE EM_COD_EM = '423NCY' AND EM_IND_ELE = 'Y'), '423NCY', 'Y', SYSDATE);

--------------------------------------------------------------------------------
-- Passagem de nível - Perímetro urbano --
--------------------------------------------------------------------------------
EXEC SP_GERAR_PU_PN('NFMK30', 'N', 'Y');
EXEC SP_GERAR_PU_PN('K30NAN', 'N', 'Y');
EXEC SP_GERAR_PU_PN('NIJK65', 'N', 'N');
EXEC SP_GERAR_PU_PN('K65NCT', 'N', 'Y');
EXEC SP_GERAR_PU_PN('NCTK86', 'N', 'Y');
EXEC SP_GERAR_PU_PN('K86NMI', 'N', 'Y');
EXEC SP_GERAR_PU_PN('NUB423', 'N', 'Y');
EXEC SP_GERAR_PU_PN('423NCY', 'N', 'Y');

--
--------------------------------------------------------------------------------
-- FIM --
--------------------------------------------------------------------------------