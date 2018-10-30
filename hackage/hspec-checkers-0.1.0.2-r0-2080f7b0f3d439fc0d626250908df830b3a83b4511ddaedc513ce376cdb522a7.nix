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
        name = "hspec-checkers";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Zalora South East Asia Pte Ltd";
      maintainer = "soenkehahn@gmail.com";
      author = "Sönke Hahn";
      homepage = "";
      url = "";
      synopsis = "Allows to use checkers properties from hspec";
      description = "Allows to use <http://hackage.haskell.org/package/checkers checkers>\nproperties from <http://hackage.haskell.org/package/hspec hspec>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hspec)
          (hsPkgs.checkers)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.checkers)
          ];
        };
      };
    };
  }