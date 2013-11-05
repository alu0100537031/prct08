require 'matriz.rb'

require 'rspec'

describe Matriz do

  before :each do
    @mat1 = Matriz.new(2,2,[[2,1],[3,2]])
    @mat2 = Matriz.new(2,2,[[4,1],[8,5]])
  end

  it "Comprobando numero de filas para una matriz 2x2" do
    @mat1.nfil.should eq(2)
  end
  
   it "Comprobando numero de columnas para una matriz 2x2" do
    @mat1.ncol.should eq(2)
  end

  it "Comprobando que la matriz se muestra correctamente 2x2" do
    @mat1.mostrar_Matriz.should eq(" 2 1 \n 3 2 \n ")
  end

  it "Comprobando que la matriz accede al subindice [0,0]" do
    @mat1.mat[0][0].should eq(2)
  end
  

  
end
