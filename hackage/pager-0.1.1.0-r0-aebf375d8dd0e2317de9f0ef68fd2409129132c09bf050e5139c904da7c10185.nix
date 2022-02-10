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
      specVersion = "1.10";
      identifier = { name = "pager"; version = "0.1.1.0"; };
      license = "BSD-2-Clause";
      copyright = "Copyright (c) 2015, Peter Harpending.";
      maintainer = "peter@harpending.org";
      author = "Peter Harpending";
      homepage = "https://github.com/pharpend/pager";
      url = "";
      synopsis = "Open up a pager, like 'less' or 'more'";
      description = "This opens up the user's $PAGER. On Linux, this is usually called @less@. On\nthe various BSDs, this is usually @more@.\n\nCHANGES\n\n[0.1.1.0] Add @printOrPage@ function and @sendToPagerStrict@ function.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "hs-pager-test-pager" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."pager" or (errorHandler.buildDepError "pager"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }