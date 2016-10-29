class GraphsController < ApplicationController
  before_action :authenticate_user!

  respond_to :html

  def index
    @profile = current_user.profile

    @weights = Weight.where(profile_id: @profile.id)  #現在のユーザーのweightデータを取り出す

    if !@weights.empty?
      @max_weight = @weights.maximum('weight')
      @min_weight = @weights.minimum('weight')
      #@graph = @weights.map{|w| [w.diary_date, w.weight]} # weights内の個々のweightについて[日付，体重]の配列にマッピング
      @graph_weights = @weights.pluck(:diary_date, :weight) # pluckの方がよかった
    end

    @muscle_masses = MuscleMass.all.where(profile_id: @profile.id)

    if !@muscle_masses.empty?
      @max_muscle_mass = @muscle_masses.maximum('muscle_mass')
      @min_muscle_mass = @muscle_masses.minimum('muscle_mass')
      @graph_muscle_masses = @muscle_masses.pluck(:diary_date, :muscle_mass)
      @max_fat = @muscle_masses.maximum('fat')
      @min_fat = @muscle_masses.minimum('fat')
      @graph_fats = @muscle_masses.pluck(:diary_date, :fat)
    end

  end

end
