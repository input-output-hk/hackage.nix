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
        name = "relit";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "";
      url = "";
      synopsis = "Literal for regular expression";
      description = "Literal notation for regular expression with QuasiQuotes";
      buildType = "Simple";
    };
    components = {
      "relit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.regex-base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }