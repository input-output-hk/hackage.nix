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
      identifier = { name = "pec"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Brett letner 2011";
      maintainer = "Brett Letner <brettletner@gmail.com>";
      author = "Brett Letner <brettletner@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "pec embedded compiler";
      description = "The intent of pec is to provide a drop-in replacement for C, but with modern language features.  Pec is a procedural language with a functional/declarative feel.  Programming in pec is very similar to monadic programming in Haskell.  The primary use case for pec is to provide a productive environment for writing safe, efficient, embedded applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "pec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            ];
          buildable = true;
          };
        };
      };
    }