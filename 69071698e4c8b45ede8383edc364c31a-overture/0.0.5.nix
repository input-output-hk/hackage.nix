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
        name = "overture";
        version = "0.0.5";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak <taylor@fausak.me>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "An alternative to some of the Prelude.";
      description = "Overture is an alternative to some of the \"Prelude\". It aims to make\nHaskell easier to read by providing a few well-named functions and\noperators.";
      buildType = "Simple";
    };
    components = {
      "overture" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.overture)
            (hsPkgs.doctest)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.overture)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }