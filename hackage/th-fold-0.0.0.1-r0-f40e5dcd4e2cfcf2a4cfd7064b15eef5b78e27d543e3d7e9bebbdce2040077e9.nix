{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "th-fold";
        version = "0.0.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "http://code.haskell.org/~mokus/th-fold";
      url = "";
      synopsis = "TH fold generator";
      description = "Very rough-around-the-edges template haskell\nfunction for generating basic catamorphisms for\nalgebraic data types.";
      buildType = "Simple";
    };
    components = {
      "th-fold" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }