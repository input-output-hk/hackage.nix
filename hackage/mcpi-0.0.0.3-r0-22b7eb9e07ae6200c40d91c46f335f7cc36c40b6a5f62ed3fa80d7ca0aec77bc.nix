{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      build-examples = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "mcpi";
        version = "0.0.0.3";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "dburke.gw@gmail.com";
      author = "Douglas Burke (dburke.gw@gmail.com)";
      homepage = "https://github.com/DougBurke/hmcpi";
      url = "";
      synopsis = "Connect to MineCraft running on a Raspberry PI.";
      description = "The MineCraft edition for Raspberry PI comes with a Java and\nPython API. See \"Network.MineCraft.Pi.Client\" for a basic\nexample.\n\nThis is a *very* basic, and *incomplete* Haskell version. I\nfully expect everything to change in later versions.\n\nA number of very simple examples are included in the examples/ directory,\nas well as a program that lets you interact with MineCraft directly.\n\nPlease see the TODO.md file in the source code for an incomplete\nlist of possible changes, and the CHANGES.md file for changes\nin the module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.split)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "flatten" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mcpi)
            (hsPkgs.transformers)
          ];
        };
        "freefall" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mcpi)
            (hsPkgs.transformers)
          ];
        };
        "hmcpi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.pipes)
          ];
        };
        "isongold" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mcpi)
          ];
        };
        "xjump" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mcpi)
          ];
        };
      };
    };
  }