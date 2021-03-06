require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe JobPropertyValuesController do

  # This should return the minimal set of attributes required to create a valid
  # JobPropertyValue. As you add validations to JobPropertyValue, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all job_property_values as @job_property_values" do
      job_property_value = JobPropertyValue.create! valid_attributes
      get :index
      assigns(:job_property_values).should eq([job_property_value])
    end
  end

  describe "GET show" do
    it "assigns the requested job_property_value as @job_property_value" do
      job_property_value = JobPropertyValue.create! valid_attributes
      get :show, :id => job_property_value.id.to_s
      assigns(:job_property_value).should eq(job_property_value)
    end
  end

  describe "GET new" do
    it "assigns a new job_property_value as @job_property_value" do
      get :new
      assigns(:job_property_value).should be_a_new(JobPropertyValue)
    end
  end

  describe "GET edit" do
    it "assigns the requested job_property_value as @job_property_value" do
      job_property_value = JobPropertyValue.create! valid_attributes
      get :edit, :id => job_property_value.id.to_s
      assigns(:job_property_value).should eq(job_property_value)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new JobPropertyValue" do
        expect {
          post :create, :job_property_value => valid_attributes
        }.to change(JobPropertyValue, :count).by(1)
      end

      it "assigns a newly created job_property_value as @job_property_value" do
        post :create, :job_property_value => valid_attributes
        assigns(:job_property_value).should be_a(JobPropertyValue)
        assigns(:job_property_value).should be_persisted
      end

      it "redirects to the created job_property_value" do
        post :create, :job_property_value => valid_attributes
        response.should redirect_to(JobPropertyValue.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved job_property_value as @job_property_value" do
        # Trigger the behavior that occurs when invalid params are submitted
        JobPropertyValue.any_instance.stub(:save).and_return(false)
        post :create, :job_property_value => {}
        assigns(:job_property_value).should be_a_new(JobPropertyValue)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        JobPropertyValue.any_instance.stub(:save).and_return(false)
        post :create, :job_property_value => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested job_property_value" do
        job_property_value = JobPropertyValue.create! valid_attributes
        # Assuming there are no other job_property_values in the database, this
        # specifies that the JobPropertyValue created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        JobPropertyValue.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => job_property_value.id, :job_property_value => {'these' => 'params'}
      end

      it "assigns the requested job_property_value as @job_property_value" do
        job_property_value = JobPropertyValue.create! valid_attributes
        put :update, :id => job_property_value.id, :job_property_value => valid_attributes
        assigns(:job_property_value).should eq(job_property_value)
      end

      it "redirects to the job_property_value" do
        job_property_value = JobPropertyValue.create! valid_attributes
        put :update, :id => job_property_value.id, :job_property_value => valid_attributes
        response.should redirect_to(job_property_value)
      end
    end

    describe "with invalid params" do
      it "assigns the job_property_value as @job_property_value" do
        job_property_value = JobPropertyValue.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JobPropertyValue.any_instance.stub(:save).and_return(false)
        put :update, :id => job_property_value.id.to_s, :job_property_value => {}
        assigns(:job_property_value).should eq(job_property_value)
      end

      it "re-renders the 'edit' template" do
        job_property_value = JobPropertyValue.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JobPropertyValue.any_instance.stub(:save).and_return(false)
        put :update, :id => job_property_value.id.to_s, :job_property_value => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested job_property_value" do
      job_property_value = JobPropertyValue.create! valid_attributes
      expect {
        delete :destroy, :id => job_property_value.id.to_s
      }.to change(JobPropertyValue, :count).by(-1)
    end

    it "redirects to the job_property_values list" do
      job_property_value = JobPropertyValue.create! valid_attributes
      delete :destroy, :id => job_property_value.id.to_s
      response.should redirect_to(job_property_values_url)
    end
  end

end
