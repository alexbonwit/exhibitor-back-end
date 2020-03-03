class ExhibitsController < ApplicationController
    def index
        exhibits = Exhibit.all
        render json: exhibits, include :artists :museum
    end

    def show
        exhibit = Exhibit.find_by(id: params[:id])
        render json: exhibit.artists, include: :museum
    end

    def create
        exhibit = Exhibit.create(name: params[:name], description: params[:description], start_date: params[:start_date], end_date: params[:end_date], cost: params[:cost], interest_count: params[:interest_count], museum_id: params[:museum_id])
        render json: exhibit, include: :museum
    end

    def update
        exhibit = Exhibit.find_by(id: params[:id])
        exhibit.update(interest_count: params[:interest_count])
        render json: exhibit
    end
end
