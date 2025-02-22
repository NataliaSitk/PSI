pole_kola = function(promien){
  if(promien<0){
    print("Kolo o takim promieniu nie istnieje. Podaj wartosc dodatnia.")
  }
  else{
    pole_kola = pi*(promien^2)
    return(pole_kola)
  }
}

pole_kola(5)
pole_kola(-1)
pole_kola(7)
