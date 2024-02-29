class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    if params[:query].present?
      @movies = PgSearch.multisearch(params[:query])
      # @movies.map do |result|
      #   puts result.searchable.title
      # end
      @movies
    end
  end
end
