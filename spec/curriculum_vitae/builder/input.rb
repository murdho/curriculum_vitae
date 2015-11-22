require 'Date'

name         'Murdho Savila'
birth_date   Date.new(1991, 2, 20) # 20th February 1991
nationality  'Estonian'
current_city 'Berlin, Germany'
hometown     'Tallinn, Estonia'

contact do
  phone '+372 566 42 181'
  email 'murdho@murdho.com'
end

technical_experience do
  programming_languages do
    production_experience do
      ruby       '2.75 years'
      javascript '2.75 years'
      postgresql '2.75 years'
      mysql      '2.75 years'
      php        '2 years'
      java_ee    'less than 1 year'
    end

    looked_at_and_interested_in do
      item :haskell
      item :prolog
      item 'C++'
    end
  end

  platforms do
    os_x    '9 years'
    linux   '2.75 years'
    node_js 'less than 1 year'
  end

  servers do
    apache '2.75 years'
    nginx  'less than 1 year'
    tomcat 'less than 1 year'
  end

  tools do
    git            '2.75 years'
    zsh            '2.75 years'
    bash           '2.75 years'
    sublime_text_2 '2.75 years'
    vim            'less than 1 year'
  end
end

work_experience do
  position do
    title           'Software Developer'
    company         'Wimdu GmbH'
    start_date      Date.new(2015, 11) # November 2015
    end_date        nil                # currently working
    location        'Berlin, Germany'
    employment_type 'permanent, full-time'

    description do
      item 'Software development in large team using
            unmodified scrum methodology'
      item 'Working with Ruby (on Rails), Javascript and
            SQL (MySQL) on daily basis'
      item '...' # to be added, when more known ;)
    end
  end

  position do
    title           'Lead Software Developer'
    company         'Inbank AS'
    start_date      Date.new(2015, 4)  # April 2015
    end_date        Date.new(2015, 10) # October 2015
    location        'Tallinn, Estonia / Remote'
    employment_type 'permanent, full-time'

    description do
      item 'Being a lead developer in software development and
            maintenance team of Inbank bank information system'
      item 'Working with Ruby (on Rails), Javascript and
            SQL (PostgreSQL) on daily basis'
      item 'Mostly working with Ruby ~> 2.2 and ~> Rails 4.2,
            occasionally supporting apps with
            Ruby Enterprise Edition and Rails ~> 3'
      item 'Building public and private APIs for client
            applications of bank backend system'
      item 'Designing and generalizing data model to have
            flexibility for future growth'
      item 'Implementing advanced money transfer & billing
            systems to fulfill book-keeping, banking law and
            end-user requirements'
      item 'Integrating Java web-services to Ruby on Rails
            application flow using JSON, XML (SOAP)'
      item 'Using virtual machines (Vagrant) for development
            isolated development environments'
      item 'Gathering and analysing business requirements in
            co-operation with business people'
      item 'Providing assistance to team members, explaining
            software business logic and requirements'
      item 'Taking part in refactoring/rewriting some parts
            of application, when such changes are needed'
      item 'Writing automated tests to speed up verification
            of existing codebase working as expected after
            new developments'
      item 'Mostly used Scrum, little experience with pair
            programming'
      item 'Delivering software solutions in fast-paced
            environment with strict deadlines'
    end
  end

  position do
    title           'Software Developer'
    company         'Desk Rock OÜ'
    start_date      Date.new(2013, 2) # 'February 2013'
    end_date        Date.new(2015, 3) # 'March 2015'
    location        'Tallinn, Estonia / Remote'
    employment_type 'permanent, full-time'

    note 'Desk Rock OÜ got acquired by Inbank AS and
          changed name to Inbank Technologies OÜ'

    description do
      item 'Financing software consultancy for multiple
            finance and commerce companies'
      item 'Working with Ruby (on Rails), Javascript and
            SQL (PostgreSQL) on daily basis'
      item 'Mostly worked with Ruby ~> 2.2 and ~> Rails 4.2,
            occasionally supporting apps with
            Ruby Enterprise Edition and Rails ~> 3'
      item 'Developing loan & hire-purchase modules for
            largest Estonian commerce company (ETK),
            integrating it with end-user self-service
            system (self-service system is built using
            PHP 5.3 and Drupal).'
      item 'Development for Estonian largest hire-purchase
            provider (Cofi AS (new name Inbank AS))'
      item 'Participating in software development for
            early-stage startup (Funderbeam)'
      item 'Used Scrum methodology, communicated directly
            to customers'
      item 'Analysed business requirements, assembled new
            input for upcoming sprints'
      item 'Took part in architecture-related discussions
            to find best tools for the job in hand'
      item 'Set up servers for applications
            (Ubuntu, Apache, Phusion Passenger)'
      item 'Used Chef for provisioning servers'
    end
  end
end

education do
  # TODO
end

electives_taken do
  # TODO
end

human_languages do
  estonian do
    level :mother_tongue
  end

  english do
    spoken  :very_good
    written :very_good
  end

  finnish do
    level 'occupational (tourism, catering)'
  end

  russian do
    level 'occupational (tourism, catering)'
  end
end

other_information do
  strong_qualities do
    item 'socially open'
    item 'polite manners'
    item 'responsible'
    item 'positive'
    item 'enthusiastic'
    item 'thorough'
    item 'good stress tolerance'
    item 'eager to learn new and useful things'
    item 'quick learner'
    item 'experience in sales'
  end

  weaknesses do
    item 'sometimes being too cautious'
    item '"bouncing" between different interests'
  end

  # Following doesn't use "here document" syntax due to
  # syntax highlighting not recognizing it as I'd like.
  plain_text %{
    I am interested in working towards utilizing machines
    the way people always have dreamed - let the machines
    take care of the dull and boring part of everything,
    so we could focus on arts, science, philosophy and love.

    I would like to be part of a team developing challenging
    and innovative technological solutions that are
    progressive and profitable.
  }.strip.gsub!(/\s+/, ' ')
end

