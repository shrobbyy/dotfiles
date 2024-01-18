# change hostname
sudo hostnamectl set-hostname "nico-pc"

# system update + RPM Fusion enable
sudo dnf update /
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm /
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm /

# add Copy repositories
sudo dnf copr enable g3tchoo/prismlauncher /

# install codecs
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel /
sudo dnf install lame\* --exclude=lame-devel /
sudo dnf group upgrade --with-optional Multimedia /

# install important packages
sudo dnf install vlc discord prismlauncher 

# install flatpaks
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo /
flatpak install flathub io.mrarm.mcpelauncher /
flatpak install flathub com.mojang.Minecraft /
flatpak install flathub com.obsproject.Studio /
flatpak install flathub com.obsproject.Studio.Plugin.OBSVkCapture /
flatpak install flathub it.mijorus.gearlever /
flatpak install flathub net.davidotek.pupgui2 /
flatpak install flathub com.spotify.Client /