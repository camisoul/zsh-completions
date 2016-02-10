#!/usr/bin/env ruby
# coding: utf-8

archive = 'completions.zip'

task default: 'backup'

desc 'gitのHEADをバックアップ'
task :backup do |_t|
  backup_dir = ''
  backup_dir = '/media/cami/DATA/WinHome'

  break if backup_dir.empty?
  sh "git archive -o #{archive} HEAD"
  sh "rsync -c --progress #{archive} #{backup_dir}"
  sh "rm #{archive}"
end
