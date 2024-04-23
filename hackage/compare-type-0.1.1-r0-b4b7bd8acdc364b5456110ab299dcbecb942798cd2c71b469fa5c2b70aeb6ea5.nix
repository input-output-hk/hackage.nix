{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "compare-type"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Yusuke Matsushita 2015";
      maintainer = "Yusuke Matsushita <y.skm24t@gmail.com>";
      author = "Yusuke Matsushita";
      homepage = "https://github.com/Kinokkory/compare-type";
      url = "";
      synopsis = "compare types of any kinds in haskell";
      description = "Compare two types of any (possibly different) kinds in Haskell.\n\nMore information can be found in the <http://hackage.haskell.org/package/compare-type hackage's haddock> or the <http://kinokkory.github.io/compare-type/ updated haddock>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }