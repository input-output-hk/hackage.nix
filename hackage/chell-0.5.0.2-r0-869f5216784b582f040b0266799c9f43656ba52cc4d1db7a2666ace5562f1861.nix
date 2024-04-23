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
    flags = { color-output = true; };
    package = {
      specVersion = "3.0";
      identifier = { name = "chell"; version = "0.5.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "John Millikin <john@john-millikin.com>";
      homepage = "https://github.com/typeclasses/chell";
      url = "";
      synopsis = "A simple and intuitive library for automated testing.";
      description = "Chell is a simple and intuitive library for automated testing.\nIt natively supports assertion-based testing, and can use companion libraries\nsuch as @chell-quickcheck@ to support more complex testing strategies.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."options" or (errorHandler.buildDepError "options"))
          (hsPkgs."patience" or (errorHandler.buildDepError "patience"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ pkgs.lib.optional (flags.color-output) (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"));
        buildable = true;
      };
    };
  }