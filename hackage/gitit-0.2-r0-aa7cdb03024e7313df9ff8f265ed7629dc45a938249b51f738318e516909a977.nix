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
      specVersion = "0";
      identifier = {
        name = "gitit";
        version = "0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "";
      url = "";
      synopsis = "Wiki using HAppS, git, and pandoc.";
      description = "Gitit is a wiki program. HAppS is used for the web\nserver and session state. Pages and uploaded files\nare stored in a git repository and may be modified\neither by using git's command-line tools or through\nthe wiki's web interface. Pandoc's extended version\nof markdown is used as a markup language. Gitit can\nbe configured to display TeX math (using jsMath)\nand highlighted source code. Ajax is used in a\nfew places, but all the basic functionality is\navailable even in browsers that do not support\njavascript.";
      buildType = "Simple";
    };
    components = {
      "library" = {};
      exes = {
        "gitit" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.xhtml)
            (hsPkgs.containers)
            (hsPkgs.pandoc)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.cgi)
            (hsPkgs.network)
            (hsPkgs.old-time)
            (hsPkgs.highlighting-kate)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.HAppS-Server)
            (hsPkgs.HAppS-State)
            (hsPkgs.HAppS-Data)
            (hsPkgs.Crypto)
            (hsPkgs.HTTP)
          ];
        };
      };
    };
  }