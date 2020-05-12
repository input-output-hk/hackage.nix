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
      identifier = { name = "RepLib"; version = "0.5.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Stephanie Weirich <sweirich@cis.upenn.edu>";
      author = "Stephanie Weirich";
      homepage = "https://github.com/sweirich/replib";
      url = "";
      synopsis = "Generic programming library with representation types";
      description = "Generic programming library providing structural\npolymorphism and other features.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."type-equality" or (errorHandler.buildDepError "type-equality"));
        buildable = true;
        };
      };
    }