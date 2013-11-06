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

   def +(other)
      raise ArgumentError, "Las matrices no son cuadradas." unless @nfil == other.nfil && @ncol == other.ncol
      m = Array.new(mat)
      for i in 0...nfil 
         for j in 0...ncol
             m[i][j] = @mat[i][j]+ other.mat[i][j]
         end
      end
      return Matriz.new(other.nfil,other.ncol,m) 
   end
  
end   
  A = [[1,2],[3,4]]
  B = [[2,4],[6,8]]
  C = [[0,0],[0,0]]
  a = Matriz.new(2,2,A)
  b = Matriz.new(2,2,B)
  c = Matriz.new(2,2,C)
  a.mostrar_Matriz
  c = a+b
  puts
  c.mostrar_Matriz
  
 

  

    
  

  
  
 
  

  
 