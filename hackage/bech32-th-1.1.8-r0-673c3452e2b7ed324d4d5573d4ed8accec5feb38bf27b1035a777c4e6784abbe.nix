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
    flags = { release = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "bech32-th"; version = "1.1.8"; };
      license = "Apache-2.0";
      copyright = "2020-2023 IOHK";
      maintainer = "operations@iohk.io, erikd@mega-nerd.com, mail@jonathanknowles.net";
      author = "IOHK Engineering Team";
      homepage = "https://github.com/input-output-hk/bech32";
      url = "";
      synopsis = "Template Haskell extensions to the Bech32 library.";
      description = "Template Haskell extensions to the Bech32 library, including\nquasi-quoters for compile-time checking of Bech32 string\nliterals.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bech32" or (errorHandler.buildDepError "bech32"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "bech32-th-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bech32" or (errorHandler.buildDepError "bech32"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."bech32-th" or (errorHandler.buildDepError "bech32-th"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }