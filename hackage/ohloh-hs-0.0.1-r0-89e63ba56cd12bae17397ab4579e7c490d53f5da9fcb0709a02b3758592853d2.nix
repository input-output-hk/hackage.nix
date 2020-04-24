{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "ohloh-hs"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Frank S. Thomas <frank@timepit.eu>";
      author = "Frank S. Thomas <frank@timepit.eu>";
      homepage = "https://github.com/fthomas/ohloh-hs";
      url = "";
      synopsis = "Interface to the Ohloh API";
      description = "ohloh-hs is an interface to the Ohloh API (<http://www.ohloh.net>), which\nprovides access to the data of the Ohloh open source directory. It consists\nmainly of simple data types for the items exposed by the API and\ncorresponding \"Text.XML.HXT.Arrow.Pickle\" pickler functions in order to\nconvert those types from\\/to XML easily.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-lens" or ((hsPkgs.pkgs-errors).buildDepError "data-lens"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."text-format-simple" or ((hsPkgs.pkgs-errors).buildDepError "text-format-simple"))
          ];
        buildable = true;
        };
      exes = {
        "cmdoh" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-lens" or ((hsPkgs.pkgs-errors).buildDepError "data-lens"))
            (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
            (hsPkgs."hxt-curl" or ((hsPkgs.pkgs-errors).buildDepError "hxt-curl"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."text-format-simple" or ((hsPkgs.pkgs-errors).buildDepError "text-format-simple"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-lens" or ((hsPkgs.pkgs-errors).buildDepError "data-lens"))
            (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
            (hsPkgs."text-format-simple" or ((hsPkgs.pkgs-errors).buildDepError "text-format-simple"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }