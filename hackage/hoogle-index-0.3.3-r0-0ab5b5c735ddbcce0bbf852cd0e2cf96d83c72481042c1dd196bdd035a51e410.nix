{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hoogle-index"; version = "0.3.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ben Gamari";
      maintainer = "Ben Gamari <ben@smart-cactus.org>";
      author = "Ben Gamari <ben@smart-cactus.org>";
      homepage = "http://github.com/bgamari/hoogle-index";
      url = "";
      synopsis = "Easily generate Hoogle indices for installed packages";
      description = "'hoogle-index' is a small utility for generating indicies for local\nHoogle installations.\n\n> \$ cabal install hoogle hoogle-index\n> \$ hoogle-index    # this will take a while\n\nYour Hoogle index now covers all of the packages locally installed.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hoogle-index" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."hoogle" or ((hsPkgs.pkgs-errors).buildDepError "hoogle"))
            ];
          buildable = true;
          };
        };
      };
    }