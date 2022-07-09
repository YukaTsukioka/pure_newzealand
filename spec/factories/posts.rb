FactoryBot.define do
  factory :post do
    title        {"綺麗なニュージーランド"}
    text         {"素敵な風景"}

    after(:build) do |post|
      post.image.attach(io: File.open('spec/images/テスト用の画像.png'), filename: 'テスト用の画像.png' )
    end

    association :user

  end
end
