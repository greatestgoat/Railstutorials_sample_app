if Rails.env.production?
    CarrierWave.configure do |config|
      config.fog_credentials = {
        # Amazon S3用の設定
        :provider              => 'AWS',
        :region                => ENV['ap-northeast-1'],     # 例: 'ap-northeast-1'
        :aws_access_key_id     => ENV['AKIA6EKM2NW7VQ67ZDDC'],
        :aws_secret_access_key => ENV['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']
      }
      config.fog_directory     =  ENV['railstutorialforb']
    end
  end
