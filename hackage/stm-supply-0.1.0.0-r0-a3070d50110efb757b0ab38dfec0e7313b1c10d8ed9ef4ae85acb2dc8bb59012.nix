{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stm-supply"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Joe Canero";
      maintainer = "jmc41493@gmail.com";
      author = "Joe Canero";
      homepage = "https://github.com/caneroj1/stm-supply#readme";
      url = "";
      synopsis = "STM wrapper around Control.Concurrent.Supply.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."concurrent-supply" or ((hsPkgs.pkgs-errors).buildDepError "concurrent-supply"))
          ];
        buildable = true;
        };
      tests = {
        "stm-supply-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."stm-supply" or ((hsPkgs.pkgs-errors).buildDepError "stm-supply"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."Unique" or ((hsPkgs.pkgs-errors).buildDepError "Unique"))
            ];
          buildable = true;
          };
        };
      };
    }