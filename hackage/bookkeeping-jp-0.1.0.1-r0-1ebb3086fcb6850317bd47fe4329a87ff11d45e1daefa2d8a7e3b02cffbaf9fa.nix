{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bookkeeping-jp"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2017 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto";
      homepage = "https://github.com/arowM/haskell-bookkeeping-jp#readme";
      url = "";
      synopsis = "Helper functions for Japanese bookkeeping.";
      description = "Helper functions of [bookkeeping module](https://github.com/arowM/haskell-bookkeeping#readme) for Japanese bookkeeping.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bookkeeping" or ((hsPkgs.pkgs-errors).buildDepError "bookkeeping"))
          ];
        buildable = true;
        };
      tests = {
        "bookkeeping-jp-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bookkeeping-jp" or ((hsPkgs.pkgs-errors).buildDepError "bookkeeping-jp"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."bookkeeping-jp" or ((hsPkgs.pkgs-errors).buildDepError "bookkeeping-jp"))
            ];
          buildable = true;
          };
        };
      };
    }