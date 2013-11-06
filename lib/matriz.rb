#!/usr/bin/ruby 
class Matriz

  attr_reader :nfil, :ncol, :mat # metodos de acceso (getter)
  
  # metodo que inicializa la matriz 
  
  def initialize(nfil,ncol,mat)  
    @nfil = nfil # inicializo numero de filas
    @ncol = ncol # inicializo numero de columnas 
    @mat = Array.new(mat) #inicializo la matriz pasando como parametro una matriz que van a hacer los datos de dicha matriz     
  end

  def mostrar_Matriz
     m = " "
    for i in 0...nfil
      m << " [ "
      for j in 0...ncol
	m <<  "#{mat[i][j]} "
      end
      m << "]"
      m << "\n "
    end
    print m
    return m
  end 
  
end   
  A = [[1,2],[3,4]]
  B = [[2,4],[6,8]]
  C = [[0,0],[0,0]]
  a = Matriz.new(2,2,A)
  a.mostrar_Matriz
 

  

    
  

  
  
 
  

  
 