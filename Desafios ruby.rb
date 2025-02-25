# CRIADOR DE IMC
puts "Vamos calcular o seu IMC? (S ou N)"
resposta = gets.chomp
if resposta == "S"
  puts "Qual o seu nome?"
  nome = gets.chomp
  puts "Qual a sua idade?"
  idade = gets.chomp.to_i
  puts "Qual a sua altura?"
  altura = gets.chomp.to_f
  puts "Qual o seu peso?"
  peso = gets.chomp.to_f
  imc = peso / (altura * altura)
  pessoa = {nome: nome, idade: idade, altura: altura, peso: peso, imc: imc}
  puts "#{pessoa[:nome]} tem #{pessoa[:idade]} anos, mede #{pessoa[:altura]}m, pesa #{pessoa[:peso]}kg e seu IMC é de #{pessoa[:imc].round(2)}.\n\n"
  if pessoa[:imc] < 18.5
    puts "Com esse IMC, #{pessoa[:nome]} está abaixo do peso."
  elsif pessoa[:imc] >= 18.5 && pessoa[:imc] < 24.9
    puts "Com esse IMC, #{pessoa[:nome]} está com o peso normal."
  elsif pessoa[:imc] >= 25 && pessoa[:imc] < 29.9
    puts "Com esse IMC, #{pessoa[:nome]} está com sobrepeso."
  elsif pessoa[:imc] >= 30 && pessoa[:imc] < 34.9
    puts "Com esse IMC, #{pessoa[:nome]} está com obesidade grau 1."
  elsif pessoa[:imc] >= 35 && pessoa[:imc] < 39.9
    puts "Com esse IMC, #{pessoa[:nome]} está com obesidade grau 2."
  elsif pessoa[:imc] >= 40
    puts "Com esse IMC, #{pessoa[:nome]} está com obesidade grau 3."
  end


elsif resposta != "S"
  puts "Poxa, que pena... Até a próxima então!"
end

