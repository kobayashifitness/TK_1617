class RankingController < ApplicationController
  def index
    @muscle_diaries = MuscleDiary.all
  end
end
