module Types
  module Inputs
    class PostInputType < Types::BaseInputObject
      argument :id, Int, required: true
      argument :title, String, required: false
      argument :date, String, required: false
      argument :og_img_url, String, required: false
      argument :draft, Boolean, required: false
      argument :description, String, required: false
      argument :content, String, required: false
    end
  end
end