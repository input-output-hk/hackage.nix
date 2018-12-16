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
      specVersion = "1.2";
      identifier = {
        name = "lsystem";
        version = "1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "carliros.g@gmail.com";
      author = "Carlos Gomez";
      homepage = "";
      url = "";
      synopsis = "Paint an L-System Grammar";
      description = "Paint an L-System Grammar";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lsystem" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.wxcore)
            (hsPkgs.wx)
            (hsPkgs.uu-parsinglib)
          ];
        };
      };
    };
  }