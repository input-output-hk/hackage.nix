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
    flags = { ghc-check-use-package-abis = true; };
    package = {
      specVersion = "1.20";
      identifier = { name = "ghc-check"; version = "0.5.0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra";
      homepage = "";
      url = "";
      synopsis = "detect mismatches between compile-time and run-time versions of the ghc api";
      description = "detect mismatches between compile-time and run-time versions of the ghc api";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-compat" or (errorHandler.buildDepError "th-compat"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.2") (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"));
        buildable = true;
      };
    };
  }