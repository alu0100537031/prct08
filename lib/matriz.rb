#!/usr/bin/ruby 
class Matriz

  attr_reader :nfil, :ncol, :mat # metodos de acceso (getter)
  
  # metodo que inicializa la matriz 
  
  def initialize(nfil,ncol,mat)  
    @nfil = nfil # inicializo numero de filas
    @ncol = ncol # inicializo numero de columnas 
    @mat = Array.new(mat) #inicializo la matriz pasando como parametro una matriz que van a hacer los datos de dicha matriz     
  end

  def to_s
     cad = " "
    for i in 0...nfil
      cad << " [ "
      for j in 0...ncol
	cad <<  "#{mat[i][j]} "
      end
      cad << "]"
      cad << "\n "
    end
    print cad
    return cad
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
  a.to_s
  c = a+b
  puts
  c.to_s
  
 

  

    
  

  
  
 
  

  
 