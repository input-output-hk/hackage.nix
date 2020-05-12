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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hackage-sparks"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/hackage-sparks";
      url = "";
      synopsis = "Generate sparkline graphs of hackage statistics";
      description = "Generate sparkline graphs of hackage statistics";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hackagesparks" = {
          depends = [
            (hsPkgs."hsparklines" or (errorHandler.buildDepError "hsparklines"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."parsedate" or (errorHandler.buildDepError "parsedate"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
              (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
          };
        };
      };
    }