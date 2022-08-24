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
      identifier = { name = "singletons-base"; version = "3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Richard Eisenberg <rae@cs.brynmawr.edu>, Jan Stolarek <jan.stolarek@p.lodz.pl>";
      homepage = "http://www.github.com/goldfirere/singletons";
      url = "";
      synopsis = "A promoted and singled version of the base library";
      description = "@singletons-base@ uses @singletons-th@ to define promoted and singled\nfunctions from the @base@ library, including the \"Prelude\". This library was\noriginally presented in /Dependently Typed Programming with Singletons/,\npublished at the Haskell Symposium, 2012.\n(<https://richarde.dev/papers/2012/singletons/paper.pdf>)\nSee also the paper published at Haskell Symposium, 2014, which describes\nhow promotion works in greater detail:\n<https://richarde.dev/papers/2014/promotion/promotion.pdf>.\n\nWARNING: @singletons-base@ defines orphan instances for @Sing@, @SingKind@,\netc. for common types such as @Bool@, @[]@, @Maybe@, etc. If you define\ninstances of these types in your code, you will likely not be able to use\nthat code with @singletons-base@.\n\n@singletons-base@ uses code that relies on bleeding-edge GHC language\nextensions. As such, @singletons-base@ only supports the latest major version\nof GHC (currently GHC 9.4). For more information,\nconsult the @singletons@\n@<https://github.com/goldfirere/singletons/blob/master/README.md README>@.\n\nYou may also be interested in the following related libraries:\n\n* The @singletons@ library is a small, foundational library that defines\nbasic singleton-related types and definitions.\n\n* The @singletons-th@ library defines Template Haskell functionality that\nallows /promotion/ of term-level functions to type-level equivalents and\n/singling/ functions to dependently typed equivalents.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.setupDepError "filepath")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."singletons-th" or (errorHandler.buildDepError "singletons-th"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."th-desugar" or (errorHandler.buildDepError "th-desugar"))
          ];
        buildable = true;
        };
      tests = {
        "singletons-base-test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."singletons-base" or (errorHandler.buildDepError "singletons-base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            ];
          buildable = true;
          };
        };
      };
    }