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
    flags = { no-double-conversion = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "formatting"; version = "7.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Alex Chapman, 2013 Chris Done, Shachaf Ben-Kiki, Martijn van Steenbergen, Mike Meyer, 2011 MailRank, Inc.";
      maintainer = "alex@farfromthere.net";
      author = "Chris Done, Shachaf Ben-Kiki, Martijn van Steenbergen, Mike Meyer, Bryan O'Sullivan, Alex Chapman";
      homepage = "https://github.com/AJChapman/formatting#readme";
      url = "";
      synopsis = "Combinator-based type-safe formatting (like printf() or FORMAT)";
      description = "Combinator-based type-safe formatting (like printf() or FORMAT), modelled from the HoleyMonoids package.\n\nSee the README at <https://github.com/AJChapman/formatting#readme> for more info.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhcjs && true) && !flags.no-double-conversion) (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"));
        buildable = true;
        };
      tests = {
        "formatting-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }