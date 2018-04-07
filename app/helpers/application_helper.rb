module ApplicationHelper
  def default_meta_tags
    {
      site: Settings.meta.name,
      charset: 'utf-8',
      title: Settings.meta.title,
      description: Settings.meta.description,
      keywords: Settings.meta.keywords,
      canonical: request.original_url,
      og: {
        type: Settings.meta.og.type,
        title: :title,
        description: :description,
        url: request.original_url,
        site_name: :site,
        image: "http://sftkoku.tokyo/#{asset_path("sft_logo3_1.png")}",
      },
      twitter: {
        card: 'summary_large_image',
        title: 'SFT國學院オンライン教科書予約',
        desciption: :description,
        creator: '@sftkoku',
        image: "http://sftkoku.tokyo/#{asset_path("sft_logo3_1.png")}"
      }
    }
  end
end
