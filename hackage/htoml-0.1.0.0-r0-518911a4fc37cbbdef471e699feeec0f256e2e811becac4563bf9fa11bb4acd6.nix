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
        name = "htoml";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Cies Breijs";
      author = "Cies Breijs";
      homepage = "https://github.com/cies/htoml";
      url = "";
      synopsis = "A parser for TOML files.";
      description = "TOML is a obvious and minimal format for config files.\n\nThis package provides a TOML parser,\nbuild with the Parsec library of parser combinators.\n\nIt provides a JSON interface using the Aeson library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.old-locale)
        ];
      };
      exes = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.file-embed)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.Cabal)
            (hsPkgs.htoml)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
      tests = {
        "Tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.file-embed)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.Cabal)
            (hsPkgs.htoml)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.Cabal)
            (hsPkgs.htoml)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }