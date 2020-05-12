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
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hydrogen"; version = "0.3.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2013-2015 Karl Voelker";
      maintainer = "hydrogen@karlv.net";
      author = "Karl Voelker";
      homepage = "https://www.github.com/ktvoelker/hydrogen";
      url = "";
      synopsis = "An alternate Prelude";
      description = "This is an alternative to \"Prelude\" that is not meant to depart drastically\nfrom the standard. The principles of Hydrogen are:\n\n1. Be total, not partial.\n2. Use 'Data.Text.Text', not 'Data.String.String'.\n3. Use generic functions, not \"Data.List\" functions.\n4. Whatever is omitted should be replaced.\n\nTo use this package, use the `NoImplicitPrelude` language option, and import\n\"H.Prelude\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."hydrogen" or (errorHandler.buildDepError "hydrogen"))
            ];
          buildable = true;
          };
        };
      };
    }