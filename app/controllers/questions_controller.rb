class QuestionsController < ApplicationController

before_action :question_id, only: [:edit, :show, :destroy, :update]

	
def edit 

end 

def update 
	if @question.update(question_params)
		flash[:success] = "Post was updated"
		redirect_to question_path(@question)
	else
		render 'edit'
	end
		
end 






	def new 
		@question = Question.new
	end 

	


	def create 
		@question = Question.new(question_params)

		if @question.save 
			flash[:success] = "Question was asked"
			redirect_to question_path(@question)

		else 
			render 'new'
		end 
	
	end

	
	



	def show 
		question_id
	end 







def index
	@questions = Question.all
end 





def destroy
	if @question.destroy
			redirect_to questions_path
	else 
		flash[:danger] = "question was not deleted"
		redirect_to questions_path
	end 
end 
	

	

	private #I don't know exactly what this means

	

	def question_id
		@question = Question.find(params[:id])
	end 

	
	def question_params
		params.require(:question).permit(:title, :body)
	end



 

end 
