require 'matriz.rb'

require 'rspec'

describe Matriz do
  before :each do
    @mat1 = Matriz.new(2,2,[[4,1],[5,7]])
    @mat2 = Matriz.new(2,2,[[2,1],[3,5]])
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
    res = @mat1*@mat2
    res.to_s.should eq("  [ 11 9 ]\n  [ 31 40 ]\n ")
    
  end


  
end
