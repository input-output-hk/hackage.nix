{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "2.0";
      identifier = {
        name = "summoner";
        version = "1.0.2";
      };
      license = "MPL-2.0";
      copyright = "2018 Kowainik";
      maintainer = "xrom.xkov@gmail.com";
      author = "Kowainik";
      homepage = "https://github.com/kowainik/summoner";
      url = "";
      synopsis = "Tool for creating completely configured production Haskell projects.";
      description = "Tool for creating completely configured production Haskell projects.\nSee README.md for details.";
      buildType = "Simple";
    };
    components = {
      "summoner" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.generic-deriving)
          (hsPkgs.neat-interpolation)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.tomland)
          (hsPkgs.universum)
        ];
      };
      exes = {
        "summon" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.summoner)
            (hsPkgs.universum)
          ];
        };
      };
      tests = {
        "summoner-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hedgehog)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.summoner)
            (hsPkgs.universum)
          ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover)
          ];
        };
      };
    };
  }