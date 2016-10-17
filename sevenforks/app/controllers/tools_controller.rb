class ToolsController < ApplicationController
# replace Tool
# replace tool
def index
  @tools = Tool.all
end

def show
  @tool = Tool.find(params[:id])
end

def new
  @tool = Tool.new
end

def create
  @tool = Tool.create!(tool_params)

  redirect_to tools_path
end

def edit
  @tool = Tool.find(params[:id])
end

def update
  @tool = Tool.find(params[:id])
  @tool.update(tool_params)

  redirect_to tool_path(@tool)
end

def destroy
  @tool = Tool.find(params[:id])
  @tool.destroy

  redirect_to tools_path
end

# strong params
private
def tool_params
  params.require(:tool).permit(:text, :source_url, :topic)
end
end
