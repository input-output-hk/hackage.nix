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
    flags = { binary = true; parsec = true; attoparsec = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "input-parsers"; version = "0.2.3.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020 Mario Blažević";
      maintainer = "blamario@protonmail.com";
      author = "Mario Blažević";
      homepage = "";
      url = "";
      synopsis = "Extension of the parsers library with more capability and efficiency";
      description = "Extended version of the parsers library, with the additional classes providing more\ncapable and efficient methods.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."monoid-subclasses" or (errorHandler.buildDepError "monoid-subclasses"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (flags.binary) (hsPkgs."binary" or (errorHandler.buildDepError "binary"))) ++ (pkgs.lib).optional (flags.parsec) (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))) ++ (pkgs.lib).optionals (flags.attoparsec) [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }