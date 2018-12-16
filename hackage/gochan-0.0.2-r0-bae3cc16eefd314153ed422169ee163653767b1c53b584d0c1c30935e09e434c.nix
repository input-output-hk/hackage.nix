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
        name = "gochan";
        version = "0.0.2";
      };
      license = "MIT";
      copyright = "Copyright (C) 2016 Charles Strahan";
      maintainer = "Charles Strahan <charles@cstrahan.com>";
      author = "Charles Strahan <charles@cstrahan.com>";
      homepage = "http://github.com/cstrahan/gochan";
      url = "";
      synopsis = "Go-style channels";
      description = "This library provides bounded channels similar to those popularized\nby the Go programming language.\n\nTHIS LIBRARY IS STILL ALPHA AND SUBJECT TO CHANGE.\n\nBreaking changes during the 0.0.X series won't result in a major\nversion bump (I hope to release a stable 1.0.0 soon).\n\nPlease give gochan a try and file an issue or pull request if you\ndiscover any ways to improve this library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          (hsPkgs.primitive)
          (hsPkgs.ghc-prim)
        ];
      };
      exes = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.gochan)
            (hsPkgs.random)
          ];
        };
        "weight" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.weigh)
            (hsPkgs.gochan)
          ];
        };
      };
      tests = {
        "fuzz" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec-core)
            (hsPkgs.gochan)
          ];
        };
      };
    };
  }