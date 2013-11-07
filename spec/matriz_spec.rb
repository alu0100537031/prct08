require 'matriz.rb'

require 'rspec'

describe Matriz do
  before :each do
    @mat1 = Matriz.new(2,2,[[4,1],[5,7]])
    @mat2 = Matriz.new(2,2,[[2,1],[3,5]])
    frac1 = Fraccion.new(1,3)
    frac2 = Fraccion.new(1,4)
    frac3 = Fraccion.new(1,5)
    frac4 = Fraccion.new(1,6)  
    @mat1_frac = Matriz.new(2,2,[[frac1,frac2],[frac3,frac4]])
    @mat2_frac = Matriz.new(2,2,[[frac1,frac2],[frac3,frac4]])
  end

# Expectativa que comprueba el numero de filas de una matriz  

  it "Comprobando numero de filas para una matriz 2x2" do
    @mat1.nfil.should eq(2)
  end
  
# Expectativa que comprueba el numero de columnas de una matriz  

   it "Comprobando numero de columnas para una matriz 2x2" do
    @mat1.ncol.should eq(2)
  end

# Expectativa que muestra la matriz 
  
  it "Comprobando que la matriz se muestra correctamente 2x2" do
    @mat1.to_s.should eq("  [ 4 1 ]\n  [ 5 7 ]\n ")
  end

# Expectativa que comprueba que se accede al subindice 0,0

  it "Comprobando que la matriz accede al subindice [0,0]" do
    @mat1.mat[0][0].should eq(4)
  end

# Expectativa que comprueba que se accede al subindice 1,0

   it "Comprobando que la matriz accede al subindice [1,0]" do
    @mat1.mat[1][0].should eq(5)
  end
  
# Expectativa que comprueba que las matrices se suman correctamente
 
  it "Comprobando que las matrices se suman correctamente " do
    sum = @mat1+@mat2
    sum.to_s.should eq("  [ 6 2 ]\n  [ 8 12 ]\n ")
    
  end

# Expectativa que comprueba que las matrices se restan correctamente
  
   it "Comprobando que las matrices se restan correctamente " do
    res = @mat1-@mat2
    res.to_s.should eq("  [ 2 0 ]\n  [ 2 2 ]\n ")
    
  end

# Expectativa que comprueba que las matrices se multiplican correctamente

    it "Comprobando que las matrices se multiplican correctamente " do
    mul = @mat1*@mat2
    mul.to_s.should eq("  [ 11 9 ]\n  [ 31 40 ]\n ")
    
  end
  
# Expectativa que comprueba que la matriz de racional se muestra correctamente
  
     it "Comprobando que la matriz de racional se muestra correctamente 2x2 " do
    @mat1_frac.to_s.should eq ("  [ 1/3 1/4 ]\n  [ 1/5 1/6 ]\n ")
   end
   
# Expectativa que comprueba que la matrices de racionales se suman correctamente
  
   it "Comprobando que las matrices de racionales se suman correctamente " do
      sum = @mat1_frac+@mat2_frac
      sum.to_s.should eq ("  [ 2/3 1/2 ]\n  [ 2/5 1/3 ]\n ")
    end

# Expectativa que comprueba que la matrices de racionales se restan correctamente
  
    it "Comprobando que las matrices de racionales se restan correctamente " do
      res = @mat1_frac-@mat2_frac
      res.to_s.should eq ("  [ 0/1 0/1 ]\n  [ 0/1 0/1 ]\n ")
    end
  
=begin   
# Expectativa que comprueba que la matrices de racionales se multiplican correctamente
  
    it "Comprobando que las matrices de racionales se multiplican correctamente " do
      sum = @mat1_frac*@mat2_frac
      sum.to_s.should eq ("  [ 0/1 0/1 ]\n  [ 0/1 0/1 ]\n ")
    end    
=end

  
end
