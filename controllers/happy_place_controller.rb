class HappyPlaceController < ApplicationController
  get '/' do
    HappyPlace.all.to_json
  end
  get '/:id' do
    @id = params[:id]
    HappyPlace.get(@id).to_json
  end
  post '/' do
    @name = params[:name]
    @lat = params[:lat]
    @lon = params[:lon]
    @model = HappyPlace.new
    @model.name = @name
    @model.lat = @lat
    @model.lon = @lon
    @model.save
    @model.to_json
  end
  patch '/:id' do
    @id = params[:id]
    @name = params[:name]
    @lat = params[:lat]
    @lon = params[:lon]
    @model = HappyPlace.find(@id)
    @model.name = @name
    @model.lat = @lat
    @model.lon = @lon
    @model.save
    @model.to_json
  end

  delete '/id' do
    @id = params[:id]
    @model = HappyPlace.find(@id)
    @model.destroy
    {:message => "Model " + @id + " destroyed."}
  end

end