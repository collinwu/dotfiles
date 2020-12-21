if test ! $(which spoof)
then
  sudo npm install spoof -g
fi

if test ! $(which gren)
then
  sudo npm install github-release-notes -g
fi

if test ! $(which gatsby)
then
  sudo npm install gatsby-cli -g
fi
