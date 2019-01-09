{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "vcsgui"; version = "0.2.1.2"; };
      license = "LicenseRef-GPL";
      copyright = "2011 Stephan Fortelny, Harald Jagenteufel";
      maintainer = "stephanfortelny at gmail.com, h.jagenteufel at gmail.com, hamish.k.mackenzie at gmail.com";
      author = "Stephan Fortelny, Harald Jagenteufel, Hamish Mackenzie";
      homepage = "https://github.com/forste/haskellVCSGUI";
      url = "";
      synopsis = "GUI library for source code management systems";
      description = "Provides library functions to expose some commonly needed scm tasks to the user.\nUses GTK+ and GTKBuilder to organize and display windows.\nUses vcswrapper to acces the scm functions.\nCurrently git, SVN and mercurial (hg) are supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.filepath)
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.mtl)
          (hsPkgs.vcswrapper)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.gi-gtk)
          (hsPkgs.gi-gtk-hs)
          ];
        };
      exes = {
        "vcsgui" = {
          depends = [
            (hsPkgs.filepath)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.vcswrapper)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.haskell-gi-base)
            (hsPkgs.gi-gtk)
            (hsPkgs.gi-gtk-hs)
            ];
          };
        "vcsgui-askpass" = {
          depends = [
            (hsPkgs.filepath)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.vcswrapper)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.haskell-gi-base)
            (hsPkgs.gi-gtk)
            (hsPkgs.gi-gtk-hs)
            ];
          };
        };
      };
    }