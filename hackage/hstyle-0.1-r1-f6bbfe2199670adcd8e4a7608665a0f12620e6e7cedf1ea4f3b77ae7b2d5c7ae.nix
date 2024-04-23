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
      specVersion = "1.6";
      identifier = { name = "hstyle"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mightybyte@mightybyte.net";
      author = "Doug Beardsley";
      homepage = "";
      url = "";
      synopsis = "Checks Haskell source code for style compliance.";
      description = "Originally intended to automate style checking for the Snap\nproject.  But the project should be general enough to work\nwith other style guides.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hstyle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }