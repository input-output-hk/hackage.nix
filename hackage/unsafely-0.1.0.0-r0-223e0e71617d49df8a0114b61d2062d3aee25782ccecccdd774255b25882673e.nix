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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "unsafely"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 (c) Hiromi ISHII";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "http://github.com/konn/unsafely";
      url = "";
      synopsis = "Flexible access control for unsafe operations and instances";
      description = "This module aims at providing simple interface to control the acccess for /unsafe/\noperations and instance.\nThe motivation of this package is somewhat similar to\n@<https://ghc.haskell.org/trac/ghc/ticket/7642 NullaryTypeClasses>@ extension,\nbut permits more flexible access control.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
        ];
        buildable = true;
      };
      exes = {
        "semigroup" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."unsafely" or (errorHandler.buildDepError "unsafely"))
          ];
          buildable = if flags.examples then true else false;
        };
        "safe-unsafe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."unsafely" or (errorHandler.buildDepError "unsafely"))
          ];
          buildable = if flags.examples then true else false;
        };
      };
    };
  }