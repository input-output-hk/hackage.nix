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
      specVersion = "1.10";
      identifier = {
        name = "hoogle-index";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ben Gamari";
      maintainer = "Ben Gamari <ben@smart-cactus.org>";
      author = "Ben Gamari <ben@smart-cactus.org>";
      homepage = "http://github.com/bgamari/hoogle-index";
      url = "";
      synopsis = "Easily generate Hoogle indices for installed packages";
      description = "'hoogle-index' is a small utility for generating indicies for local\nHoogle installations.\n\n> \$ cabal install hoogle hoogle-index\n> \$ hoogle-index    # this will take a while\n\nYour Hoogle index now covers all of the packages locally installed.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hoogle-index" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.errors)
            (hsPkgs.bytestring)
            (hsPkgs.temporary)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.optparse-applicative)
            (hsPkgs.hoogle)
          ];
        };
      };
    };
  }