#/bin/sh

[ -e ~/.emacs.d ] || mkdir -p ~/.emacs.d

cd ~/.emacs.d
git clone git://github.com/nu7hatch/nu7macs.git nu7macs || exit 1

cd nu7macs
git submodule init
git submodule update || exit 1

echo ';; Emacs configuration for nu7s :)' > ~/.emacs
echo '(setq nu7macs-path "~/.emacs.d/nu7macs")' >> ~/.emacs
echo '(load-file (concat nu7macs-path "/init.el"))' >> ~/.emacs
echo 
echo "The nu7macs bundle has been installed!!"
