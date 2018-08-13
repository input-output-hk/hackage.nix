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
      specVersion = "1.8";
      identifier = {
        name = "idempotent";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "© Alistair Lynn, 2014";
      maintainer = "arplynn+idem@gmail.com";
      author = "Alistair Lynn";
      homepage = "https://github.com/prophile/idempotent";
      url = "";
      synopsis = "Idempotent monoids";
      description = "A typeclass, and instances, for monoids that are idempotent.";
      buildType = "Simple";
    };
    components = {
      "idempotent" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }