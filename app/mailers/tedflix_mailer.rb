class TedflixMailer < ActionMailer::Base
  default from: 'Tedflix <noreply@tedroddy.net>'
  layout 'mailer'

  def for_you(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name} we just added some shows you may like")
  end

  def no_service(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name} TEDLIX IS DOWN!?!")
  end

  def back_online(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name} We're Back!")
  end

  def now_on(options = {})
    @first_name = options[:name]
    @email = options[:email]
    mail(to: "#{@first_name} <#{@email}>", subject: "#{@first_name} Now on Tedflix")
end
