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
      specVersion = "1.8";
      identifier = { name = "simplex"; version = "0.3.6"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "http://github.com/scravy/simplex";
      url = "";
      synopsis = "A simple markup language that translates to LaTeX";
      description = "A simple markup language that translates to LaTeX\n\nSee the PDF included in the cabal tarball to see\nhow Simplex works.\n\n[@v0.3.4@]\nRemoved dependency on the deprecated @old-time@ package,\nusing @time@ instead now.\n\n[@v0.3.5@]\nEnhanced the documentation, added the simplex source of\nit in doc (see the source tarball). Added @letter@.\n\n[@v0.3.6@]\nRelaxed dependencies so the package will work with\nthe Haskell Platform 2012.2 too (thats the one in\ndebian 7).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "simplex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }