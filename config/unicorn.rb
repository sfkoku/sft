application = 'sft-app'

# ワーカープロセス数: CUPコア数の2倍程度に設定
worker_processes 4

#15秒応答がなければワーカーをkill
timeout 15

# PID, ソケット
pid "/var/run/unicorn/unicorn_#{application}.pid"
listen "/var/run/unicorn/unicorn_#{application}.sock"

# ダウンタイム無しでデプロイ可
preload_app true

# before_forkとafter_forkで個々のワーカーの外部接続を管理
before_fork do |server, worker|
  Signal.trap 'TERM' do
  puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
  Process.kill 'QUIT', Process.pid
  end

  defined?(ActiveRecord::Base) and
  ActiveRecord::Base.connection.disconnect!end

after_fork do |server, worker|
  Signal.trap 'TERM' do
  puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
  end

  defined?(ActiveRecord::Base) and
  ActiveRecord::Base.establish_connection
end

# ログ
stderr_path File.expand_path('log/unicorn.log', ENV['RAILS_ROOT'])
stdout_path File.expand_path('log/unicorn.log', ENV['RAILS_ROOT'])
