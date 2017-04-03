DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $DIR

mkdir $1
cd $1

git init
touch README.md
cp $DIR/files/.gitignore .gitignore
git add .
git commit -m'Initial Commit'

npm init -y
npm install --save yarn

git add .
git commit -m'npm init and install yarn'

yarn add babel-core babel-preset-latest babel-preset-react
cp $DIR/files/.babelrc .babelrc
git add .
git commit -m'Add babel'

yarn add webpack babel-loader webpack-dev-server
cp $DIR/files/webpack.config.js webpack.config.js
mkdir dist
cp $DIR/files/index.html dist/index.html
git add .
git commit -m'Add webpack'

yarn add react react-dom redux
git add .
git commit -m'Add React and Redux'

mkdir src
cp $DIR/files/hello-world.jsx src/hello-world.jsx
cp $DIR/files/index.js src/index.js
webpack
git add .
git commit -m'Add hello world'
