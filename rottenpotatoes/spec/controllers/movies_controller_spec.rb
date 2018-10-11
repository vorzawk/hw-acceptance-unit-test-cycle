require 'spec_helper'

describe MoviesController do
    describe 'finding similar movies' do
        it 'should call the controller method that finds the movies with the same director' do
            post :find_movies_with_same_director, {:id => 1}
        end
        it 'should select the template which displays similar movies' do
            response.should render_template('find_movies_with_same_director')
        end
        it 'should make the list of similar movies available to the template'
    end
end
