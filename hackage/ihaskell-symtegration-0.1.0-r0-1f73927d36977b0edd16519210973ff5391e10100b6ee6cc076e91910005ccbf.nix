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
      specVersion = "1.18";
      identifier = { name = "ihaskell-symtegration"; version = "0.1.0"; };
      license = "Apache-2.0";
      copyright = "Copyright 2025 Yoo Chung";
      maintainer = "dev@chungyc.org";
      author = "Yoo Chung";
      homepage = "https://symtegration.dev/";
      url = "";
      synopsis = "IHaskell extension for making the use of Symtegration more seamless.";
      description = "IHaskell extension for making the use of Symtegration more seamless.\nSee the [README](https://github.com/symtegration/ihaskell) on GitHub for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ihaskell" or (errorHandler.buildDepError "ihaskell"))
          (hsPkgs."symtegration" or (errorHandler.buildDepError "symtegration"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."ihaskell" or (errorHandler.buildDepError "ihaskell"))
            (hsPkgs."ihaskell-symtegration" or (errorHandler.buildDepError "ihaskell-symtegration"))
            (hsPkgs."symtegration" or (errorHandler.buildDepError "symtegration"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }