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
      identifier = { name = "alpha"; version = "1.0.13"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marc.coiffier@gmail.com";
      author = "Marc Coiffier";
      homepage = "http://www.alpha-lang.info/";
      url = "";
      synopsis = "A compiler for the Alpha language";
      description = "Alpha is a programming language that aims at being very simple and\nlow-level, so as to be efficient, while at the same time\nbeing able to climb in abstraction through introspection\nin the Lisp Way.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "alpha" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bindings-posix" or (errorHandler.buildDepError "bindings-posix"))
            (hsPkgs."AvlTree" or (errorHandler.buildDepError "AvlTree"))
            (hsPkgs."COrdering" or (errorHandler.buildDepError "COrdering"))
            (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
          ];
          buildable = true;
        };
      };
    };
  }