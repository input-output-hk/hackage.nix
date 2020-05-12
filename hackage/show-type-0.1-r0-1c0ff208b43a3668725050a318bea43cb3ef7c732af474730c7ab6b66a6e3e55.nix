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
      identifier = { name = "show-type"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Yusuke Matsushita 2014";
      maintainer = "Yusuke Matsushita <y.skm24t@gmail.com>";
      author = "Yusuke Matsushita";
      homepage = "https://github.com/Kinokkory/show-type";
      url = "";
      synopsis = "convert types into string values in haskell";
      description = "Convert types into string values in Haskell.\n\nMore information can be found in the <http://hackage.haskell.org/package/show-type hackage's haddock> or the <http://kinokkory.github.io/show-type/ updated haddock>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }