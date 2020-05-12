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
    flags = {
      small_base = true;
      containers = true;
      contravariant = true;
      distributive = true;
      comonad = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "semigroupoids-syntax"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 NICTA Limited";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
      homepage = "https://github.com/NICTA/semigroupoids-syntax";
      url = "";
      synopsis = "RebindableSyntax using the semigroupoids package";
      description = "<<http://i.imgur.com/Ns5hntl.jpg>>\n\nRebindableSyntax using the semigroupoids package";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          ] ++ (pkgs.lib).optional (flags.containers) (hsPkgs."containers" or (errorHandler.buildDepError "containers"))) ++ (pkgs.lib).optional (flags.contravariant) (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))) ++ (pkgs.lib).optional (flags.distributive) (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))) ++ (pkgs.lib).optional (flags.comonad) (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"));
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }