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
        name = "sandman";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "(c) 2015 Abhinav Gupta";
      maintainer = "mail@abhinavg.net";
      author = "Abhinav Gupta";
      homepage = "https://github.com/abhinav/sandman";
      url = "";
      synopsis = "Manages Cabal sandboxes to avoid rebuilding packages.";
      description = "sandman aims to reduce the amount of time spent rebuilding commonly used\nHackage packages by managing a global set of Cabal sandboxes that can be\nmixed into any project's Cabal sandbox.\n\nFor more information, check the\n<https://github.com/abhinav/sandman/blob/master/README.md README>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "sandman" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.unix-compat)
          ];
        };
      };
    };
  }