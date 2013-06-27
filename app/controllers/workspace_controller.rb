class WorkspaceController < ApplicationController
  before_filter :set_token

  def index
  @workspaces = Workspace.find(:all)
  end
end
