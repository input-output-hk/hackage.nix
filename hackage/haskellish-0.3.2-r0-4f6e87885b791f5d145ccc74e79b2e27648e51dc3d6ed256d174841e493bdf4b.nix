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
      identifier = { name = "haskellish"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019- David Ogborn";
      maintainer = "David Ogborn <ogbornd@mcmaster.ca>";
      author = "David Ogborn";
      homepage = "http://github.com/dktr0/Haskellish";
      url = "";
      synopsis = "For parsing Haskell-ish languages";
      description = "A library for parsing miniature and esoteric languages that are similar to Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }