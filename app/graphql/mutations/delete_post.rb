module Mutations
  class DeletePost < BaseMutation
    field :post, Types::PostType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      post = Post.find(id)
      post.destroy
      { post: post }
    end
  end
end
