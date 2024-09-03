#solicita a altura
$altura = Read-Host "Digite a altura da pirâmide"

#verifica se e um numero int
if ($altura -as [int] -and $altura -gt 0) {
    #faz o cast para um numero int
    $altura = [int]$altura
  
    #for para criar cada linha da piramide onde i eh a variavel auxiliar
    for ($i = 0; $i -le $altura; $i++) {
        #espaco para a esquerda
        $espaco = " " * ($altura - $i)
        $espaco2 = " "

        #cria a parte esquerda da piramide
        
        $caractere = "#" * ($i)
        
        Write-Host("$espaco$caractere$espaco2$caractere")
          
    }
} else {
    #tratamento se n for inserido um num 
    Write-Output "Por favor, insira um número inteiro positivo."
}

