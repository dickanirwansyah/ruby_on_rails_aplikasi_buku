class BukusController < ApplicationController

 def index
  @title='Data Buku'
  @bukus = Buku.all
  end

 def show
  @title = 'successfully'
  @buku = Buku.find(params[:id])
 end

 def new
   @title = 'Manage Buku'
   @buku = Buku.new
 end

def create
  #render plain: params[:post].inspect
  @buku = Buku.new(buku_params)
  if(@buku.save)
    redirect_to bukus_path
  else
    render 'new'
  end
end

def edit
  @buku = Buku.find(params[:id])
  @title = 'Edit Data Buku'
end

def update
  @buku = Buku.find(params[:id])
  if @buku.update(buku_params)
    redirect_to bukus_path
  else
    render 'edit'
  end
end

def destroy
  @buku = Buku.find(params[:id])
  @buku.destroy
  redirect_to bukus_path
end

private def buku_params
  params.require(:buku).permit(:idbuku, :judulBuku, :namaPengarang, :penerbit, :tahunTerbit)
end

end
