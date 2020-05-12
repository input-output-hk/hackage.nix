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
      specVersion = "1.6";
      identifier = { name = "smallstring"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aslatter@gmail.com";
      author = "Antoine Latter";
      homepage = "http://community.haskell.org/~aslatter/code/smallstring/";
      url = "";
      synopsis = "A Unicode text type, optimized for low memory overhead";
      description = "A Unicode text type, optimized for low memory overhead.\nNo string manipulation functions are offered.\n\nEquality and ordinal comparison aim to be competitive with\nthe Text type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."smallarray" or (errorHandler.buildDepError "smallarray"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }