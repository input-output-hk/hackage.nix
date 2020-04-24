{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gpio"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Tyler Olson";
      maintainer = "tydotg@gmail.com";
      author = "Tyler Olson";
      homepage = "http://github.com/tgolson/gpio";
      url = "";
      synopsis = "Haskell GPIO interface, designed specifically for the RaspberryPi.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."basic-prelude" or ((hsPkgs.pkgs-errors).buildDepError "basic-prelude"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."string-conversions" or ((hsPkgs.pkgs-errors).buildDepError "string-conversions"))
          ];
        buildable = true;
        };
      exes = {
        "gpio" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gpio" or ((hsPkgs.pkgs-errors).buildDepError "gpio"))
            (hsPkgs."basic-prelude" or ((hsPkgs.pkgs-errors).buildDepError "basic-prelude"))
            (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
            (hsPkgs."string-conversions" or ((hsPkgs.pkgs-errors).buildDepError "string-conversions"))
            ];
          buildable = true;
          };
        };
      };
    }