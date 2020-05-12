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
      identifier = { name = "ghc-exactprint"; version = "0.5.6.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alan.zimm@gmail.com";
      author = "Alan Zimmerman, Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "ExactPrint for GHC";
      description = "Using the API Annotations available from GHC 7.10.2, this\nlibrary provides a means to round trip any code that can\nbe compiled by GHC, currently excluding lhs files.\n\nIt does this with a phased approach\n\n* Delta - converts GHC API Annotations into relative\noffsets, indexed by SrcSpan\n\n* Transform - functions to facilitate changes to\nthe AST, adjusting the annotations generated in the\nDelta phase to suit the changes.\n\n* Print - converts an AST and its annotations to\nproperly formatted source text.\n\n* Pretty - adds annotations to an AST (fragment) so that\nthe output can be parsed back to the same AST.\n\n\nNote: requires GHC 7.10.2 or later";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.11") (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"));
        buildable = if compiler.isGhc && (compiler.version).lt "7.10.2"
          then false
          else true;
        };
      exes = {
        "roundtrip" = {
          depends = (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.10.2" && flags.roundtrip) ([
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-exactprint" or (errorHandler.buildDepError "ghc-exactprint"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.11") (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot")));
          buildable = if compiler.isGhc && (compiler.version).ge "7.10.2" && flags.roundtrip
            then true
            else false;
          };
        "static" = {
          depends = (pkgs.lib).optionals (flags.roundtrip) ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.11") (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot")));
          buildable = if flags.roundtrip then true else false;
          };
        "prepare-hackage" = {
          depends = (pkgs.lib).optionals (flags.roundtrip) ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.11") (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot")));
          buildable = if flags.roundtrip then true else false;
          };
        };
      tests = {
        "test" = {
          depends = ([
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
            ] ++ (if flags.dev
            then [ (hsPkgs."free" or (errorHandler.buildDepError "free")) ]
            else [
              (hsPkgs."ghc-exactprint" or (errorHandler.buildDepError "ghc-exactprint"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.11") (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"));
          buildable = if compiler.isGhc && (compiler.version).lt "7.10.2"
            then false
            else true;
          };
        };
      };
    }