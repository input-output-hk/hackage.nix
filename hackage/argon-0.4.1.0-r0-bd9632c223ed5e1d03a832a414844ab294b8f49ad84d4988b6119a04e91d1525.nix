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
      identifier = { name = "argon"; version = "0.4.1.0"; };
      license = "ISC";
      copyright = "2015 Michele Lacchia";
      maintainer = "michelelacchia@gmail.com";
      author = "Michele Lacchia";
      homepage = "http://github.com/rubik/argon";
      url = "";
      synopsis = "Measure your code's complexity";
      description = "Argon performs static analysis on your code in order to compute cyclomatic\ncomplexity. It is a quantitative measure of the number of linearly\nindipendent paths through the code.\n\nThe intended usage is through Argon's executable, which accepts a list of\nfiles or directories to analyze. The data can be optionally exported to\nJSON.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-group" or (errorHandler.buildDepError "pipes-group"))
          (hsPkgs."pipes-files" or (errorHandler.buildDepError "pipes-files"))
          (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
          (hsPkgs."lens-simple" or (errorHandler.buildDepError "lens-simple"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."ghc-syb-utils" or (errorHandler.buildDepError "ghc-syb-utils"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        buildable = if compiler.isGhc && (compiler.version).lt "7.8"
          then false
          else true;
        };
      exes = {
        "argon" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."argon" or (errorHandler.buildDepError "argon"))
            (hsPkgs."docopt" or (errorHandler.buildDepError "docopt"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
            ];
          buildable = if compiler.isGhc && (compiler.version).lt "7.8"
            then false
            else true;
          };
        };
      tests = {
        "argon-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."argon" or (errorHandler.buildDepError "argon"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
            ];
          buildable = if compiler.isGhc && (compiler.version).lt "7.8"
            then false
            else true;
          };
        "style" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
            ];
          buildable = true;
          };
        };
      };
    }