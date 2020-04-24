{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ascii-holidays"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Tom Murphy";
      author = "Tom Murphy";
      homepage = "";
      url = "";
      synopsis = "ASCII animations for the holidays!";
      description = "ASCII animations for various holidays. Currently two animations, both for\nChristmas, both reimplementations of animations in other languages:\n- Bash tree: https://github.com/sergiolepore/ChristBASHTree\n- Perl tree: https://github.com/rcaputo/acme-poe-tree";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ascii-holidays" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."terminfo" or ((hsPkgs.pkgs-errors).buildDepError "terminfo"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
            ];
          buildable = true;
          };
        };
      };
    }