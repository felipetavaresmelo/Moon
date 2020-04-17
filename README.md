
## Ruby
sudo apt-get install ruby-full build-essential zlib1g-dev

## Variáveis de ambiente Ruby
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

## install jekyll e bundler
gem install jekyll bundler

bundle install

**Debugar**
bundle exec jekyll serve