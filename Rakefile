TARGETS = %w[
  # not yet
]

#desc 'install'
#task :install do
#  TARGETS.each do |f|
#    FileUtils.cp_r "#{pwd}/#{f}", "~/.vim/#{f}"
#  end
#end
#
#desc 'uninstall'
#task :uninstall do
#  TARGETS.each do |f|
#    FileUtils.rm_r "~/.vim/#{f}"
#  end
#end
#
#desc 'upgrade'
#task :upgrade do
#  warn "do `git pull`"
#end

desc 'install_for_developpers'
task :install_for_developpers do
  # Dependencies
  sh 'curl http://www.vim.org/scripts/download_script.php?src_id=9591 -o vim-submode-0.0.0.zip'
  sh 'unzip vim-submode-0.0.0.zip'
  sh 'rm vim-submode-0.0.0.zip'
  sh 'cp vim-submode-0.0.0/autoload/submode.vim ~/.vim/autoload/submode.vim'
  sh 'cp vim-submode-0.0.0/doc/submode.txt ~/.vim/doc/submode.txt'
  sh 'rm -r vim-submode-0.0.0'

  # Main
  TARGETS.each do |f|
    sh "ln -s #{pwd}/#{f} ~/.vim/#{f}" unless
      File.exist?(File.expand_path("~/.vim/#{f}"))
  end
end
