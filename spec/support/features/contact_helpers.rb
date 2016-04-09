module Features
  module ContactHelpers
    def add_contact(options = {})
      click_link I18n.t('admin.buttons.add_contact')
      update_contact(options)
    end

    def update_contact(options = {})
      within('.contacts') do
        fill_in name, with: options[:name]
        fill_in title, with: options[:title]
        fill_in email, with: options[:email]
        fill_in department, with: options[:department]
      end
    end

    def name
      find(:xpath, './/input[contains(@name, "[name]")]')[:id]
    end

    def title
      find(:xpath, './/input[contains(@name, "[title]")]')[:id]
    end

    def email
      find(:xpath, './/input[contains(@name, "[email]")]')[:id]
    end

    def department
      find(:xpath, './/input[contains(@name, "[department]")]')[:id]
    end

    def delete_contact
      click_link I18n.t('admin.buttons.delete_contact')
      click_button I18n.t('admin.buttons.save_changes')
    end
  end
end
