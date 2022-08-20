module Mutations
  class CreatePost < BaseMutation
    # TODO: define return fields
    field :post, Types::PostType, null: false

    # TODO: define arguments
    argument :title, String, required: true
    argument :date, String, required: true
    argument :og_img_url, String, required: false
    argument :draft, Boolean, required: false
    argument :description, String, required: true
    argument :content, String, required: true

    # TODO: define resolve method
    def resolve(**params)
      post = Post.create(params)
      { post: post }
    end
  end
end
