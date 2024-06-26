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
      identifier = { name = "hackage-plot"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/hackage-plot";
      url = "";
      synopsis = "Generate cumulative graphs of hackage uploads";
      description = "Generate cumulative graphs of hackage uploads";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hackage-plot" = {
          depends = [
            (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."parsedate" or (errorHandler.buildDepError "parsedate"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
              (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
        };
      };
    };
  }