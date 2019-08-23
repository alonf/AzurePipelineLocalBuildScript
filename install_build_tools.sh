rm -r installation_scripts
apt-get update -y
apt-get install git -y
mkdir installation_scripts
cd installation_scripts
git clone https://github.com/microsoft/azure-pipelines-image-generation.git
export METADATA_FILE=/tmp/metadata_file
export HELPER_SCRIPTS=/tmp/helper_script_folder
export DEBIAN_FRONTEND=noninteractive
rm  $METADATA_FILE 2> /dev/null
rm -r $HELPER_SCRIPTS 2> /dev/null
cd azure-pipelines-image-generation/images/linux
mkdir $HELPER_SCRIPTS
cp -r scripts/helpers/*.sh $HELPER_SCRIPTS
bash ./scripts/base/repos.sh
bash ./scripts/helpers/apt.sh
bash ./scripts/helpers/document.sh
bash ./scripts/installers/7-zip.sh
bash ./scripts/installers/1804/basic.sh
bash ./scripts/installers/build-essential.sh
bash ./scripts/installers/clang.sh
bash ./scripts/installers/cmake.sh
bash ./scripts/installers/docker-compose.sh
bash ./scripts/installers/docker-moby.sh
bash ./scripts/installers/docker.sh
bash ./scripts/installers/1804/dotnetcore-sdk.sh
bash ./scripts/installers/erlang.sh
bash ./scripts/installers/firefox.sh
bash ./scripts/installers/gcc.sh
bash ./scripts/installers/git.sh
bash ./scripts/installers/1804/go.sh
bash ./scripts/installers/google-chrome.sh
bash ./scripts/installers/haskell.sh
bash ./scripts/installers/heroku.sh
bash ./scripts/installers/hhvm.sh
bash ./scripts/installers/image-magick.sh
bash ./scripts/installers/java-tools.sh
bash ./scripts/installers/1804/kubernetes-tools.sh
bash ./scripts/installers/leiningen.sh
bash ./scripts/installers/1804/mercurial.sh
bash ./scripts/installers/miniconda.sh
bash ./scripts/installers/mono.sh
bash ./scripts/installers/mysql.sh
bash ./scripts/installers/nodejs.sh
bash ./scripts/installers/phantomjs.sh
bash ./scripts/installers/1804/php.sh
bash ./scripts/installers/pollinate.sh
bash ./scripts/installers/1804/powershellcore.sh
bash ./scripts/installers/ruby.sh
bash ./scripts/installers/rust.sh
bash ./scripts/installers/scala.sh
bash ./scripts/installers/sphinx.sh
bash ./scripts/installers/subversion.sh
bash ./scripts/installers/terraform.sh
bash ./scripts/installers/vcpkg.sh
bash ./scripts/installers/1804/android.sh
bash ./scripts/installers/1804/azpowershell.sh
bash ./scripts/installers/containercache.sh
bash ./scripts/installers/1804/hosted-tool-cache.sh
bash ./scripts/installers/python.sh
bash ./scripts/installers/test-toolcache.sh
export BOOST_VERSIONS=1.69.0
export BOOST_DEFAULT=1.69.0
bash ./scripts/installers/boost.sh
