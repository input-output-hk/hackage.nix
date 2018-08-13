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
        name = "indextype";
        version = "0.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Clinton Mead (2017)";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "";
      url = "";
      synopsis = "BROKEN VERSION DO NOT USE!";
      description = "THIS IS A BROKEN VERSION DO NOT USE!";
      buildType = "Simple";
    };
    components = {
      "indextype" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }