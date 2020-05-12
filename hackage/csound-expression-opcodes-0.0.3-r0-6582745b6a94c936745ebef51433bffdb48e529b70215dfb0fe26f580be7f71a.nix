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
      identifier = { name = "csound-expression-opcodes"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "";
      url = "";
      synopsis = "opcodes for the library csound-expression";
      description = "opcodes for the library csound-expression";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."csound-expression-typed" or (errorHandler.buildDepError "csound-expression-typed"))
          (hsPkgs."csound-expression-dynamic" or (errorHandler.buildDepError "csound-expression-dynamic"))
          ];
        buildable = true;
        };
      };
    }