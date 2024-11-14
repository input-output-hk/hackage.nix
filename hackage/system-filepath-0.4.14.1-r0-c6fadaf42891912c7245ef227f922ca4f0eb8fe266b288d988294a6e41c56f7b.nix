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
      specVersion = "2.0";
      identifier = { name = "system-filepath"; version = "0.4.14.1"; };
      license = "MIT";
      copyright = "John Millikin 2010-2012";
      maintainer = "https://github.com/fpco/haskell-filesystem";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://github.com/fpco/haskell-filesystem";
      url = "";
      synopsis = "High-level, byte-based file and directory path manipulations (deprecated)";
      description = "High-level, byte-based file and directory path manipulations (deprecated).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
      };
      tests = {
        "filesystem_path_tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."chell" or (errorHandler.buildDepError "chell"))
            (hsPkgs."chell-quickcheck" or (errorHandler.buildDepError "chell-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }