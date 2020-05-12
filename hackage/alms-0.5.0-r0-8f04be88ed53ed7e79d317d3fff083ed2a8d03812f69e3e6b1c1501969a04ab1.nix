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
    flags = { editline = true; parsec3 = true; readline = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "alms"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "2010, Jesse A. Tov";
      maintainer = "tov@ccs.neu.edu";
      author = "Jesse A. Tov <tov@ccs.neu.edu>";
      homepage = "http://www.ccs.neu.edu/~tov/pubs/alms";
      url = "";
      synopsis = "a practical affine language";
      description = "Alms is an experimental, general-purpose programming language that\nsupports practical affine types. To offer the expressiveness of\nGirard’s linear logic while keeping the type system light and\nconvenient, Alms uses expressive kinds that minimize notation while\nmaximizing polymorphism between affine and unlimited types.\nA key feature of Alms is the ability to introduce abstract affine types\nvia ML-style signature ascription. In Alms, an interface can impose\nstiffer resource usage restrictions than the principal usage\nrestrictions of its implementation. This form of sealing allows the type\nsystem to naturally and directly express a variety of resource\nmanagement protocols from special-purpose type systems.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "alms" = {
          depends = ([
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ] ++ (if flags.readline
            then [
              (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
              ]
            else (pkgs.lib).optional (flags.editline) (hsPkgs."editline" or (errorHandler.buildDepError "editline")))) ++ [
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }