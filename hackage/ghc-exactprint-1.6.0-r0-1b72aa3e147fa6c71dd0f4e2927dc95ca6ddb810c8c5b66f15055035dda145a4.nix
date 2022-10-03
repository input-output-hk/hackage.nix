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
    flags = { roundtrip = false; dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-exactprint"; version = "1.6.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alan.zimm@gmail.com";
      author = "Alan Zimmerman, Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "ExactPrint for GHC";
      description = "Using the API Annotations available from GHC 9.2.1, this\nlibrary provides a means to round trip any code that can\nbe compiled by GHC, currently excluding lhs files.\n\nNote: requires GHC 9.4.*. For earlier GHC\nversions see lower version numbers.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ordered-containers" or (errorHandler.buildDepError "ordered-containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
          ];
        buildable = if compiler.isGhc && (compiler.version).lt "9.4"
          then false
          else true;
        };
      exes = {
        "roundtrip" = {
          depends = (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "9.4" && flags.roundtrip) [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-exactprint" or (errorHandler.buildDepError "ghc-exactprint"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
            ];
          buildable = if compiler.isGhc && (compiler.version).ge "9.4" && flags.roundtrip
            then true
            else false;
          };
        "static" = {
          depends = (pkgs.lib).optionals (flags.roundtrip) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
            ];
          buildable = if flags.roundtrip then true else false;
          };
        "prepare-hackage" = {
          depends = (pkgs.lib).optionals (flags.roundtrip) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
            ];
          buildable = if flags.roundtrip then true else false;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ordered-containers" or (errorHandler.buildDepError "ordered-containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
            (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
            (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
            ] ++ (if flags.dev
            then [ (hsPkgs."free" or (errorHandler.buildDepError "free")) ]
            else [
              (hsPkgs."ghc-exactprint" or (errorHandler.buildDepError "ghc-exactprint"))
              ]);
          buildable = if compiler.isGhc && (compiler.version).lt "9.4"
            then false
            else true;
          };
        };
      };
    }