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
      identifier = { name = "elevator"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Fumiaki Kinoshita";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/elevator";
      url = "";
      synopsis = "Immediately lifts to a desired level";
      description = "This package provides 'elevate' function which composes 'lift'-like transformations automatically.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."clean-unions" or (errorHandler.buildDepError "clean-unions"))
          ];
        buildable = true;
        };
      };
    }