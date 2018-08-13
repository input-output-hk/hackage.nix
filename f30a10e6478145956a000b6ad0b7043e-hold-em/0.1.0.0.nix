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
      specVersion = "1.10";
      identifier = {
        name = "hold-em";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Joe Vargas 2014";
      maintainer = "Joe Vargas <jxv@hush.com>";
      author = "Joe Vargas";
      homepage = "";
      url = "";
      synopsis = "An engine for Texas hold'em Poker";
      description = "This package contains a collection of essential data types and functions.\n\nPlease note, that the @deal@ function imposes a range of 2-9 players.";
      buildType = "Simple";
    };
    components = {
      "hold-em" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.safe)
        ];
      };
    };
  }