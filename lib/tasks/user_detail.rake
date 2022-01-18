namespace :user_detail do
  desc "TODO"
  task update_alter_email: :environment do
    # UserDetail.all.each do |user|
    #   user.update!(alter_email: 'support@devohack.com') unless user.alter_email.present?
    # end

    UserDetail.all.select(:alter_email).where(alter_email: '').update_all(alter_email: 'support@devohack.com')
  end

end
