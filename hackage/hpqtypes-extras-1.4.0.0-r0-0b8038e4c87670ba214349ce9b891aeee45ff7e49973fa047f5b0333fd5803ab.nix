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
        name = "hpqtypes-extras";
        version = "1.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Scrive AB";
      maintainer = "Andrzej Rybczak <andrzej@rybczak.net>,\nJonathan Jouty <jonathan@scrive.com>,\nMikhail Glushenkov <mikhail@scrive.com>";
      author = "Scrive AB";
      homepage = "https://github.com/scrive/hpqtypes-extras";
      url = "";
      synopsis = "Extra utilities for hpqtypes library";
      description = "The following extras for hpqtypes library:\n\n* DSL for easy, modular construction of SQL queries.\n\n* System for automatic validation and migration\nof a database schema.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.exceptions)
          (hsPkgs.fields-json)
          (hsPkgs.hpqtypes)
          (hsPkgs.lifted-base)
          (hsPkgs.log-base)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.text-show)
        ];
      };
      tests = {
        "hpqtypes-extras-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.hpqtypes)
            (hsPkgs.hpqtypes-extras)
            (hsPkgs.lifted-base)
            (hsPkgs.log-base)
            (hsPkgs.monad-control)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }