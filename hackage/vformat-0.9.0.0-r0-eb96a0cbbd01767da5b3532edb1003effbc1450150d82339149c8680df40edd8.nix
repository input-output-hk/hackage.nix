{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "vformat"; version = "0.9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Version Cloud";
      maintainer = "Jorah Gao <jorah@version.cloud>";
      author = "";
      homepage = "https://github.com/versioncloud/vformat#readme";
      url = "";
      synopsis = "A Python str.format() like formatter";
      description = "Please see the http://hackage.haskell.org/package/vformat";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "vformat-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."vformat" or ((hsPkgs.pkgs-errors).buildDepError "vformat"))
            ];
          buildable = true;
          };
        };
      };
    }