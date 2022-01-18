module UserDetailsHelper
  def full_name(user)
    user.present? ? "#{ user.first_name } #{ user.last_name}" : ""
  end

  def phone_pattern(user)
    user.phone.present? ? "#{user.phone[0,3]}-#{user.phone[3,4]}-#{user.phone[7,3]}" : ""
  end

  def alter_phone_pattern(user)
    user.alter_phone.present? ? "#{user.alter_phone[0,3]}-#{user.alter_phone[3,4]}-#{user.alter_phone[7,3]}" : ""
  end

  def date_pattern(user)
    user.created_at.present? ? "#{user.created_at.to_s[0,10]}" : ""
  end

  def aadhar_pattern(user)
    user.aadhar_no.present? ? "#{ user.aadhar_no[0,4]}-#{user.aadhar_no[4,4]}-#{user.aadhar_no[8,4]}" : ""
  end

end
