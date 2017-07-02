class ProjectsController < ApplicationController
	def index
      @project = Project.all
       @weekly_reports = WeeklyReport.all

	end

	def show
       @project = Project.find(params[:id])
       @develope_by = Project.find(params[:id]).DevelopBy.reject { |c| c.empty? }
       @test_by = Project.find(params[:id]).TestBy.reject { |c| c.empty? }
      

	end

	def main
       @project = Project.all
       @weekly_report = WeeklyReport.all
       
	end

	def new
       @project = Project.new
       @developer = ["张子楷","李方炜","王庆光","唐珊珊","黎锦添","黎芷珊","马晨耕","吴溢彬","宁建国"]
       @tester = ["林劼","黄晓玲","左蓉","陈慧文","谢慧慧","周露","郭晓璇"]
       @system = ['业务系统','产品报价系统（PRC）','供应商管理系统（SRM）','调度系统（TMS）','财务结算系统','收款易（Skyee）','报表系统(RPT)']
       @project_type = ['维护项目','新项目','组内任务']
	end

	def edit
       @project = Project.find(params[:id])
	end

	def create
        @project = Project.new(project_params)
             

        if @project.save
        	redirect_to@project
        else
            render 'new'

		end
	end

	def update
        @project = Project.find(params[:id])

        if @project.update(project_params)
   			 redirect_to @project
  		else
   			 render 'edit'
  		end

	end

	def destroy
  		@project = Project.find(params[:id])
 		 @project.destroy
 
  		 redirect_to projects_path
	end

  
	private
	  def project_params
	  	params.require(:project).permit(:title, :remark, :project_type, :system, {:DevelopBy => []}, {:TestBy => []}, :ScheduledStartDate, :ScheduledFinishDate)	
	  end
end
