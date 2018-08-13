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
        name = "ANum";
        version = "0.2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Dan Burton 2013 - 2018";
      maintainer = "danburton.email@gmail.com";
      author = "Dan Burton";
      homepage = "https://github.com/DanBurton/ANum#readme";
      url = "";
      synopsis = "Num instance for Applicatives provided via the ANum newtype";
      description = "";
      buildType = "Simple";
    };
    components = {
      "ANum" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "ANum-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ANum)
          ];
        };
      };
    };
  }