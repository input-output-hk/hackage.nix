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
    flags = { buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "web-routes-quasi"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://docs.yesodweb.com/web-routes-quasi/";
      url = "";
      synopsis = "Define data types and parse/build functions for web-routes via a quasi-quoted DSL";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."web-routes" or (errorHandler.buildDepError "web-routes"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."web-encodings" or (errorHandler.buildDepError "web-encodings"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            ];
          buildable = if flags.buildtests then true else false;
          };
        };
      };
    }