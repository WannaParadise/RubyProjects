class MailerSystem
  def initialize(mails)
    @mails = mails
  end
  def list_of_mails 
    @mails.map(&:name_mail).join(',')
  end
  def message_of_mail
    @mails.map(&:text).join(',')
  end
end
 
describe MailerSystem do 
  it 'the list_of_mails method should work correctly' do
    mail = double('Project')
    second_mail = double('Cool')
    allow(mail).to receive(:name_mail) { 'igor@gmail.com'} 
    allow(second_mail).to receive(:name_mail) { 'ivan@gmail.com'}
    cr = MailerSystem.new [mail,second_mail]
    expect(cr.list_of_mails).to eq('igor@gmail.com,ivan@gmail.com') 
  end
end

describe MailerSystem do 
  it 'the message_of_mail method should work correctly' do
      mail = double('Project')
      mail2 = double('Project')
      allow(mail).to receive(:text) { 'Good Morning'}
      allow(mail2).to receive(:text) { 'Good Morning'}
      cr = MailerSystem.new [mail,mail2]
      expect(cr.message_of_mail).to eq('Good Morning,Good Morning')
  end
end

