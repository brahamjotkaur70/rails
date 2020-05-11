class Post < ApplicationRecord


validates(
    :body,
    presence: { message: "must exist" },
    length: { minimum: 20 }

)
validates(
    :author,
    presence: {message: "must exist"},
    length: {minimum: 3}
)
end
