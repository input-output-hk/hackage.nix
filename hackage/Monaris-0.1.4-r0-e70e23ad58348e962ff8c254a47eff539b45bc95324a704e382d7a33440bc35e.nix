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
        name = "Monaris";
        version = "0.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2013 Fumiaki Kinoshita";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinishota";
      homepage = "https://github.com/fumieval/Monaris/";
      url = "";
      synopsis = "A simple tetris clone";
      description = "A tetris clone written in Haskell.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Monaris" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.array)
            (hsPkgs.vect)
            (hsPkgs.containers)
            (hsPkgs.free)
            (hsPkgs.directory)
            (hsPkgs.free-game)
          ];
        };
      };
    };
  }