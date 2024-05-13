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
      specVersion = "1.24";
      identifier = { name = "singletons-th"; version = "3.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Richard Eisenberg <rae@cs.brynmawr.edu>, Jan Stolarek <jan.stolarek@p.lodz.pl>";
      homepage = "http://www.github.com/goldfirere/singletons";
      url = "";
      synopsis = "A framework for generating singleton types";
      description = "@singletons-th@ defines Template Haskell functionality that allows\n/promotion/ of term-level functions to type-level equivalents and\n/singling/ functions to dependently typed equivalents. This library was\noriginally presented in /Dependently Typed Programming with Singletons/,\npublished at the Haskell Symposium, 2012.\n(<https://richarde.dev/papers/2012/singletons/paper.pdf>)\nSee also the paper published at Haskell Symposium, 2014, which describes\nhow promotion works in greater detail:\n<https://richarde.dev/papers/2014/promotion/promotion.pdf>.\n\n@singletons-th@ generates code that relies on bleeding-edge GHC language\nextensions. As such, @singletons-th@ only supports the latest major version\nof GHC (currently GHC 9.10). For more information,\nconsult the @singletons@\n@<https://github.com/goldfirere/singletons/blob/master/README.md README>@.\n\nYou may also be interested in the following related libraries:\n\n* The @singletons@ library is a small, foundational library that defines\nbasic singleton-related types and definitions.\n\n* The @singletons-base@ library uses @singletons-th@ to define promoted and\nsingled functions from the @base@ library, including the \"Prelude\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ghc-boot-th" or (errorHandler.buildDepError "ghc-boot-th"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-desugar" or (errorHandler.buildDepError "th-desugar"))
          (hsPkgs."th-orphans" or (errorHandler.buildDepError "th-orphans"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }