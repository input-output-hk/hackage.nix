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
      specVersion = "1.4";
      identifier = { name = "timberc"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Johan Nordlander <nordland@csee.ltu.se>";
      author = "Johan Nordlander";
      homepage = "http://www.timber-lang.org";
      url = "";
      synopsis = "The Timber Compiler.";
      description = "This is a compiler for a strict and pure functional\nlanguage";
      buildType = "Custom";
      };
    components = {
      exes = {
        "timberc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bzlib" or (errorHandler.buildDepError "bzlib"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy")))
            ];
          buildable = true;
          };
        };
      };
    }