{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "roller"; version = "0.1.3"; };
      license = "GPL-2.0-only";
      copyright = "(c) 2013-2014 Econify, LLC";
      maintainer = "lou@econify.com";
      author = "Louis J. Scoras";
      homepage = "https://github.com/Econify/roller";
      url = "";
      synopsis = "Playing with applicatives and dice!";
      description = "A basic library and program for simulated rolling of\npolyhedral dice, as would be used in pen and paper RPGs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."regex-applicative" or ((hsPkgs.pkgs-errors).buildDepError "regex-applicative"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          ];
        buildable = true;
        };
      exes = {
        "roller" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."regex-applicative" or ((hsPkgs.pkgs-errors).buildDepError "regex-applicative"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."roller" or ((hsPkgs.pkgs-errors).buildDepError "roller"))
            ];
          buildable = true;
          };
        };
      };
    }