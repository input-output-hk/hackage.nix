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
      specVersion = "1.12";
      identifier = { name = "ann"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Arnaud Spiwack";
      maintainer = "arnaud@spiwack.net";
      author = "Arnaud Spiwack";
      homepage = "https://github.com/aspiwack/haskell-ann#readme";
      url = "";
      synopsis = "Informative annotations which don't change equality";
      description = "This package introduces a type @Ann a@ to annotate data types\nwith information which doesn't influence the behaviour of your\nprogram. These annotations can then be displayed, as assistance to\nthe user.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }