FactoryBot.define do
  factory :comment do
    reply            { 'どこは一番もう同じ約束がかりという事のためから探しでした。現に場合が通知違いはひとまずどんな妨害でありなどに過ぎから合うないのは意味妨げたですて、ちょっとには出かけあるましなまし。大学に行っまし事はともかく時間をほぼたずた。もう大森君と発展騒ぎどう焦燥よりありないがたその本位それか談判がといったお変化ますですでたて、そんな場合はみんなか社会名を纏って、向さんの事が遅まきのそれをいくら肝使用とすると彼がたに大換言をしようにいやしくもお希望の来るないなて、よしけっして満足に云っましばいですものが書いなけれない。' }
    
    after(:build) do |comment|
      comment.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
