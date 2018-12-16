{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "vcsgui";
        version = "0.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "2011 Stephan Fortelny, Harald Jagenteufel";
      maintainer = "stephanfortelny at gmail.com, h.jagenteufel at gmail.com";
      author = "Stephan Fortelny, Harald Jagenteufel";
      homepage = "https://github.com/forste/haskellVCSGUI";
      url = "";
      synopsis = "GUI library for source code management systems";
      description = "Provides library functions to expose some commonly needed scm tasks to the user.\nUses GTK+ and GTKBuilder to organize and display windows.\nUses vcswrapper to acces the scm functions.\nCurrently git and SVN are supported.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.MissingH)
          (hsPkgs.filepath)
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
          (hsPkgs.vcswrapper)
          (hsPkgs.process)
          (hsPkgs.gtk)
        ];
      };
      exes = {
        "vcsgui" = {
          depends = [
            (hsPkgs.MissingH)
            (hsPkgs.filepath)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.vcswrapper)
            (hsPkgs.process)
            (hsPkgs.gtk)
          ];
        };
        "vcsgui-askpass" = {
          depends = [
            (hsPkgs.MissingH)
            (hsPkgs.filepath)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.vcswrapper)
            (hsPkgs.process)
            (hsPkgs.gtk)
          ];
        };
      };
    };
  }