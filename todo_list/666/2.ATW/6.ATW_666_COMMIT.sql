--------------------------------------------------------------------------------
-- ATW - RUMO
-- Versão..........: 666
-- Objetivo........: Placas sul, AMVs mola FICO, Limites LRI, Maquinistas RDC
-- Data............: 03/11/2026
-- Desenvolvido por: Equipe Malha
--------------------------------------------------------------------------------

-- Alterar Seção para Owner Correspondente
ALTER SESSION SET CURRENT_SCHEMA=ATW_QA2;

--
--------------------------------------------------------------------------------
-- CALCULAR LIMITES E TAMANHOS --
--------------------------------------------------------------------------------
EXEC CALCULAR_LIMITES_TAMANHOS('LLMLRI', 0, 10.589);
EXEC CALCULAR_LIMITES_TAMANHOS('NFMK30', 0, 13.875);
EXEC CALCULAR_LIMITES_TAMANHOS('K30NAN', 0, 10.098);
EXEC CALCULAR_LIMITES_TAMANHOS('NIJK65', 0, 9.214);
EXEC CALCULAR_LIMITES_TAMANHOS('K65NCT', 0, 10.479);
EXEC CALCULAR_LIMITES_TAMANHOS('NCTK86', 0, 9.333);
EXEC CALCULAR_LIMITES_TAMANHOS('K86NMI', 0, 7.932);
EXEC CALCULAR_LIMITES_TAMANHOS('NUB423', 0, 14.383);
EXEC CALCULAR_LIMITES_TAMANHOS('423NCY', 0, 4.64);

--
--------------------------------------------------------------------------------
-- FIM --
--------------------------------------------------------------------------------