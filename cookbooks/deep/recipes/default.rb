include_recipe 'python'
include_recipe 'git'

# execute 'unlink python' do
#   command 'rm /usr/bin/python'
#   action :run
# end

# execute 'link python' do
#   command 'ln -s /usr/bin/python3.5 /usr/bin/python'
#   action :run
# end

python_pip 'theano'
python_pip 'tensorflow'
python_pip 'keras'


git "/home/vagrant/keras" do
  repository "https://github.com/fchollet/keras.git"
  reference "master"
  action :sync
end