default:
	rm -rf content/osx/*
	rm -rf content/linux/*
	rm -rf content/windows/*
	cp -r ~/bitburner/.build/bitburner-darwin-x64/* content/osx
	cp -r ~/bitburner/.build/bitburner-linux-x64/* content/linux
	cp -r ~/bitburner/.build/bitburner-win32-x64/* content/windows
	./builder_osx/steamcmd +login hydroflame4418 $STEAM_PASSWORD +run_app_build ../scripts/app_build_1812820.vdf +quit
