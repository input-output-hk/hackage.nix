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
        version = "1.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrzej Rybczak <andrzej@rybczak.net>,\nJonathan Jouty <jonathan@scrive.com>";
      author = "Scrive";
      homepage = "https://github.com/scrive/hpqtypes-extras";
      url = "";
      synopsis = "Extra utilities for hpqtypes library";
      description = "The following extras for hpqtypes library:\n\n* DSL for easy, modular construction of SQL queries.\n\n* System for automatic validation and migration of a database schema.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
          (hsPkgs.exceptions)
          (hsPkgs.fields-json)
          (hsPkgs.hpqtypes)
          (hsPkgs.lifted-base)
          (hsPkgs.log)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.text-show)
        ];
      };
    };
  }