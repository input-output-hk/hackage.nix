{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      maintainer = false;
      tutorial = false;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "cassava-streams";
        version = "0.3.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2018 Peter Jones";
      maintainer = "Peter Jones <pjones@devalot.com>";
      author = "Peter Jones <pjones@devalot.com>";
      homepage = "https://github.com/pjones/cassava-streams";
      url = "";
      synopsis = "io-streams interface for the cassava CSV library.";
      description = "The cassava-streams library glues togeter the cassava CSV library\nand the io-streams streaming library.\n\nSee the \"System.IO.Streams.Csv.Tutorial\" module for a simple tutorial.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.io-streams)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "tutorial" = {
          depends = pkgs.lib.optionals (!(!flags.tutorial)) [
            (hsPkgs.base)
            (hsPkgs.cassava-streams)
            (hsPkgs.io-streams)
          ];
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.cassava-streams)
            (hsPkgs.io-streams)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }