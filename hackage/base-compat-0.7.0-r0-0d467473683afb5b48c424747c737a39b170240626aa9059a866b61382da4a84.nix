{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "base-compat"; version = "0.7.0"; };
      license = "MIT";
      copyright = "(c) 2012-2015 Simon Hengel,\n(c) 2014 João Cristóvão";
      maintainer = "Simon Hengel <sol@typeful.net>, João Cristóvão <jmacristovao@gmail.com>";
      author = "Simon Hengel <sol@typeful.net>, João Cristóvão <jmacristovao@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A compatibility layer for base";
      description = "Ban CPP from your code.  See the README for what is covered:\n<https://github.com/sol/base-compat#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."setenv" or ((hsPkgs.pkgs-errors).buildDepError "setenv"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }