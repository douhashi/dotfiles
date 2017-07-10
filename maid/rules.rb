require 'fileutils'
#
Maid.rules do
  ### trash
  repeat '3600s' do
    rule 'Trash downloads' do
      dir('~/Downloads/*').each do |path|
        trash(path) if 1.month.since?(accessed_at(path))
      end
    end

    rule 'Trash maid.log' do
      dir('~/.maid/*.log').each do |path|
        trash(path) if 1.week.since?(created_at(path))
      end
    end
  end

  ### move
  repeat '10s' do
    rule 'Move videos' do
      video_root = '~/Videos/.private'

      dir('~/Downloads/*.{mp4}').each do |path|
        dirname = Date.today.strftime('%Y%m')
        dest_path = File.join(video_root, 'downloads', dirname)
        mkdir(dest_path)

        move(path, dest_path)
      end
    end
  end
end
