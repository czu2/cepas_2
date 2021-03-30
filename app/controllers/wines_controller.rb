class WinesController < ApplicationController
    before_action :authenticate_user!, except: :index

    def index
        @wines = Wine.all.includes([:strains, :wine_strains])
        @wine = Wine.new
        @strains = Strain.all.order(:name, :asc)
    end

    def create
        
        @wine = Wine.new(wine_params)
        
        strain_ids = params[:wine][:strain_ids]
        strain_ids.delete("") unless strain_ids.nil?

        strain_percents = params[:wine][:strain_percent]
        strain_percents.delete("") unless strain_percents.nil?

        begin

            Wine.transaction do
                @wine.save
                strain_ids.length.times do |i|
                    WineStrain.create(
                        wine_id: @wine.id,
                        strain_id: strain_ids[i],
                        percent: strain_percents[i]
                    )
                end

                flash[:success] = "Vino registrado exitosamente"
                redirect_to root_path
            end
        rescue
            flash[:error] = "El vino no se ha podido registrar"
            redirect_to root_path
        end
    end

    def edit
        @wine = Wine.find(params[:id])
    end

    def update
        @wine = Wine.find(params[:id])

        if @wine.update(name: wine_params[:name])

            percent = wine_params[:percent]
            percent.delete("") unless percent.nil?

            oenologist_ids = wine_params[:oenologist_ids]
            oenologist_ids.delete("") unless oenologist_ids.nil?

            score = wine_params[:score]
            score.delete("") unless score.nil?

            begin
                Wine.transaction do
                    @wine.save
                    oenologist_ids.length.times do |i|
                        WineOenologist.create(
                            wine_id: @wine.id,
                            oenologist_id: oenologist_ids[i],
                            score: score[i]
                        )
                    end
                    flash[:success] = "Evaluación registrada exitosamente"
                    redirect_to root_path
                end
            rescue
                flash[:error] = "La evaluación no se ha podido registrar"
                redirect_to root_path
            end
        end
    end

    private
    def wine_params
        params.require(:wine).permit(:name, strain_ids:[], percent:[], oenologist_ids:[], score:[])
    end

end