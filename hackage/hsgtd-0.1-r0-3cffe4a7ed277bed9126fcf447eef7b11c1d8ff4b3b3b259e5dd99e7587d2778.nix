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
        name = "hsgtd";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "michael.lesniak@gmail.com";
      author = "Michael Lesniak";
      homepage = "http://www.mlesniak.com/haskell/gettings-things-done-in-haskell/";
      url = "";
      synopsis = "Console-based gettings-things-done application";
      description = "Console-based application for using the Gettings-Things-\nDone- approach for task management using projects and\ncontexts.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsgtd" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskeline)
            (hsPkgs.ansi-terminal)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }