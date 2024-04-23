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
    flags = {
      pedantic = false;
      data-typeable = true;
      ghc-generics = true;
      binary = true;
      data-default = true;
      deepseq = true;
      cereal = false;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "verbosity"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2016 Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško";
      homepage = "https://github.com/trskop/verbosity";
      url = "";
      synopsis = "Simple enum that encodes application verbosity.";
      description = "Simple enum that encodes application verbosity with various useful instances.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))) ++ pkgs.lib.optionals (flags.ghc-generics) (pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.2" && compiler.version.lt "7.6")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim")))) ++ pkgs.lib.optional (flags.binary) (hsPkgs."binary" or (errorHandler.buildDepError "binary"))) ++ pkgs.lib.optional (flags.data-default) (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))) ++ pkgs.lib.optional (flags.deepseq) (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))) ++ pkgs.lib.optional (flags.cereal) (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"));
        buildable = true;
      };
    };
  }