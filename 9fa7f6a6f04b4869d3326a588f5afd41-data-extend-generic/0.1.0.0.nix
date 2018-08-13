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
        name = "data-extend-generic";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2010 Yu Li";
      maintainer = "ylilarry@gmail.com";
      author = "Yu Li";
      homepage = "http://github.com/ylilarry/data-extend-generic";
      url = "";
      synopsis = "Extend Haskell data or newtype like in OOP languages";
      description = "This package allows you to extend Haskell data or newtype like in OOP languages.";
      buildType = "Simple";
    };
    components = {
      "data-extend-generic" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "data-extend-generic-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-extend-generic)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }