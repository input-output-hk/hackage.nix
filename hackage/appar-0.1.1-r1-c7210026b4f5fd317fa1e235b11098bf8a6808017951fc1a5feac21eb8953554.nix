{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "appar";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "";
      url = "";
      synopsis = "A simple applicative parser";
      description = "A simple applicative parser in Parsec style";
      buildType = "Simple";
    };
    components = {
      "appar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }