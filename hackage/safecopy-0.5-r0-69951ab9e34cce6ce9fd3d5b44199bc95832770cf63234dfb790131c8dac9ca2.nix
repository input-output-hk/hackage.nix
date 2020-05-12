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
      identifier = { name = "safecopy"; version = "0.5"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Lemmih <lemmih@gmail.com>";
      author = "David Himmelstrup, Felipe Lessa";
      homepage = "http://acid-state.seize.it/safecopy";
      url = "";
      synopsis = "Binary serialization with version control.";
      description = "An extension to Data.Serialize with built-in version control.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }