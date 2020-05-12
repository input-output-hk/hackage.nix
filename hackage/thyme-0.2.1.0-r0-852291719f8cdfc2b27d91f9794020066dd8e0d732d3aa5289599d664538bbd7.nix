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
      bug-for-bug = true;
      instance-num = true;
      show-internal = false;
      werror = false;
      utf8-string = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "thyme"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2013 Liyang HU";
      maintainer = "thyme@liyang.hu";
      author = "Liyang HU, Ashley Yakeley";
      homepage = "https://github.com/liyang/thyme";
      url = "";
      synopsis = "A faster time library";
      description = "A faster time library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          ] ++ (if flags.utf8-string
          then [
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ]
          else [
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ]);
        buildable = true;
        };
      tests = {
        "sanity" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."thyme" or (errorHandler.buildDepError "thyme"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
            ] ++ (pkgs.lib).optional (flags.utf8-string) (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"));
          buildable = true;
          };
        };
      };
    }