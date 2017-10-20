# Demo App For Testing The Gem: [PDF Report Generator](https://github.com/Jakub41/pdf-report-generator)

This application has the purpose to test the functionality of the Gem **PDF Report Generator**.

## Requirments 

- Ruby 2.3.1
- Rails 4.2.6
- PostgreSQL
- Bootstrap 3
- Font awesome
- Yard documentation (of the Gem)

## Dependencies

```ruby 
gem 'bootstrap'
gem 'font-awesome-rails'
gem 'pdf-report-generator'
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'
```

## Description

This app is a simple way to show how the PDF generator works. 

There is essentialy one view showing a table of 3 reports and clicking on the button shows the HTML view of the report. 

The HTML view  contains the Report with the button **PDF Report**.

Clicking on the button will be open a new tab with a spin loading while the PDF genertes. 

## To do

The app is simple and need to be extended to dynamically generated content for test match effectively the Gem. 

The layouts of the app need to be improved as the generated PDF looks not nice, breaking the pages in the wrong way. 
  

