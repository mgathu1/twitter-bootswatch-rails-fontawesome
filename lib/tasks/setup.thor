class Setup < Thor
  include Thor::Actions

  desc 'fontawesome_update_asset_pipeline', 'make font awesome less files use asset pipeline'
  def fontawesome_update_less_files_for_asset_pipeline

    # default template

    gsub_file 'vendor/toolkit/fontawesome/variables.less',
              '"../fonts"',
              '"fontawesome"'

    gsub_file 'vendor/toolkit/fontawesome/path.less',
              ' url(',
              ' asset-url('

  end

  desc 'fontawesome_create_custom_variables_less_file', 'create a subset less variables for custom font awesome variables less file to use asset pipeline'
  def fontawesome_create_custom_variables_less_file

    less_variables = IO.readlines('vendor/toolkit/fontawesome/variables.less')[5..10]

    File.open('lib/generators/bootswatch/fontawesome/install/templates/variables.less', 'w') do |less_file|
      less_variables.each do |line|
        less_file << line
      end
    end

  end

end