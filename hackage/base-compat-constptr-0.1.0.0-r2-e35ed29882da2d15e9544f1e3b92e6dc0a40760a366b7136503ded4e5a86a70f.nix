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
      specVersion = "3.0";
      identifier = { name = "base-compat-constptr"; version = "0.1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "wenkokke@users.noreply.github.com";
      author = "Wen Kokke";
      homepage = "";
      url = "";
      synopsis = "Backport of 'Foreign.C.ConstPtr'";
      description = "Backport of 'Foreign.C.ConstPtr'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }