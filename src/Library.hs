module Library where
import PdePreludat

type Horas = Number 
type Objetivo = String 
type ObjetivoFocalizado = String 
type Presion = Number 

-- PUNTO 1
presionGolpe :: Horas -> Objetivo -> Presion
presionGolpe horasEntrenamiento objetivo = poder horasEntrenamiento / fortaleza objetivo

poder :: Number -> Number 
poder = (*15)

fortaleza :: String -> Number 
fortaleza = doble . length

doble :: Number -> Number 
doble = (2*)

-- PUNTO 2
gomuGomu :: Objetivo -> Presion
gomuGomu = presionGolpe 180

golpesNormalesConsecutivos :: Objetivo -> Presion
golpesNormalesConsecutivos = presionGolpe 240

--PUNTO 3
objetivoEsDificil :: Objetivo -> Bool 
objetivoEsDificil  = (<100) . gomuGomu

objetivoEsAccesible = between 200 400 . golpesNormalesConsecutivos . objetivoFocalizado

between :: Number -> Number -> Number -> Bool 
between down up val = val >= down && val <= up

objetivoFocalizado :: Objetivo -> ObjetivoFocalizado
objetivoFocalizado = take 7