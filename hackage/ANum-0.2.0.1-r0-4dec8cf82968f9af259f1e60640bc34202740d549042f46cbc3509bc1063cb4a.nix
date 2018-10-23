{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ANum";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Dan Burton 2013 - 2018";
      maintainer = "dan.burton@originate.com";
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