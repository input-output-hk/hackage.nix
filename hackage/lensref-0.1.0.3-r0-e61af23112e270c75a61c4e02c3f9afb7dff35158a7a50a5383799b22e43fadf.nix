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
    flags = { pure = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "lensref"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divipp@gmail.com";
      author = "Péter Diviánszky";
      homepage = "http://www.haskell.org/haskellwiki/LGtk";
      url = "";
      synopsis = "References which can be joined and on which lenses can be applied";
      description = "The lensref package provides and interface an two implementation\nfor references which can be joined and on which lenses can be applied.\n\n-The pure implementation is slow and has memory leaks but probably easier to follow.\nThis is the reference implementation, so if the the other implementation\ndiffers this has the right behaviour.\n\n-The fast implementation is intended for real usage.\n\nStatus:\n\n-The interface is getting stable. You can expect more functionality and minor changes on current functionality.\n\n-There are test cases for the first half of the interface.\nBoth implementations fulfil the test cases.\n\n-The pure implementation is ready.\n\n-The fast implementation is much faster than the pure implementation,\nbut it is far from being as fast as possible.\nProbably it also leaks memory.\n\nTo see what is possible to do with lens references, look at the test cases in \"Data.LensRef.Test\"\n\nFor more information visit the following links:\n\n-<http://www.haskell.org/haskellwiki/LGtk haskell.org wiki page>\n\n-<http://lgtk.wordpress.com/ Wordpress blog>\n\n-<https://github.com/divipp/lensref GitHub repository>\n\n-<http://hackage.haskell.org/package/lensref Haddock documentation (this page)>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."operational" or (errorHandler.buildDepError "operational"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }