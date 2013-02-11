ruby-ntlm
=========

ruby-ntlm is NTLM authentication client for Ruby.
This library supports NTLM v1 only.

NTLM authentication is used in Microsoft's server products,
such as MS Exchange Server and IIS.

ruby-ntlm-namespace
-------------------

This is a fork of [mademaxus' namespace fix](https://github.com/mademaxus/ruby-ntlm) for the [macks' ruby-ntlm](https://github.com/macks/ruby-ntlm).

This gem release is only meant to help those experiencing the namespace issues with macks' ruby-ntlm and a simple dropin for Ruby on Rails gem files.


Install
-------

    $ sudo gem install ruby-ntlm


Usage
-----

### HTTP ###

    require 'ntlm/http'
    http = Net::HTTP.new('www.example.com')
    request = Net::HTTP::Get.new('/')
    request.ntlm_auth('User', 'Domain', 'Password')
    response = http.request(request)

### HTTP (using Mechanize) ###

    require 'ntlm/mechanize'
    mech = Mechanize.new
    mech.auth('Domain\\User', 'Password')
    mech.get('http://www.example.com/index.html')

### IMAP ###

    require 'ntlm/imap'
    imap = Net::IMAP.new('imap.example.com')
    imap.authenticate('NTLM', 'User', 'Domain', 'Password')

### SMTP ###

    require 'ntlm/smtp'
    smtp = Net::SMTP.new('smtp.example.com')
    smtp.start('localhost.localdomain', 'Domain\\User', 'Password', :ntlm) do |smtp|
      smtp.send_mail(mail_body, from_addr, to_addr)
    end


Author
------

MATSUYAMA Kengo (<macksx@gmail.com>)


License
-------

MIT License.

Copyright (c) 2010 MATSUYAMA Kengo


References
----------

 * [MS-NLMP][]: NT LAN Manager (NTLM) Authentication Protocol Specification
   [MS-NLMP]: http://msdn.microsoft.com/en-us/library/cc236621%28PROT.13%29.aspx
 * [Ruby/NTLM][]: Another NTLM implementation for Ruby
   [Ruby/NTLM]: http://rubyforge.org/projects/rubyntlm/
