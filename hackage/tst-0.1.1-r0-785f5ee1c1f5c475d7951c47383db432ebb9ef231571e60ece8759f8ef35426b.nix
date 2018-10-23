{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "tst";
        version = "0.1.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Francesco Mazzoli (f@mazzo.li)";
      author = "Francesco Mazzoli (f@mazzo.li)";
      homepage = "https://github.com/bitonic/language-spelling";
      url = "";
      synopsis = "BK-tree implementation";
      description = "Ternary Search Tree implementation.";
      buildType = "Simple";
    };
    components = {
      "tst" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }