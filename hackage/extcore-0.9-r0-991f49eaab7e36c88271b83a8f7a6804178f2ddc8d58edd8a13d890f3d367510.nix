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
      specVersion = "1.2.3";
      identifier = { name = "extcore"; version = "0.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tim Chevalier <chevalier@alum.wellesley.edu>";
      author = "Andrew Tolmach, Tim Chevalier, The GHC Team";
      homepage = "";
      url = "";
      synopsis = "Libraries for processing GHC Core";
      description = "Libraries for processing GHC Core";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).gt "6.8.2") (hsPkgs."syb" or (errorHandler.buildDepError "syb"));
        buildable = true;
        };
      };
    }