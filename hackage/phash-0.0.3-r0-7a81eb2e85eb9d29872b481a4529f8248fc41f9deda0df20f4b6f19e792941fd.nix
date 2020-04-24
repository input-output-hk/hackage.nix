{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "phash"; version = "0.0.3"; };
      license = "GPL-3.0-only";
      copyright = "Copyright: (c) 2014 Michael Xavier";
      maintainer = "Michael Xavier <michael@michaelxavier.net>";
      author = "Michael Xavier <michael@michaelxavier.net>";
      homepage = "http://github.com/michaelxavier/phash";
      url = "";
      synopsis = "Haskell bindings to pHash, the open source perceptual hash library";
      description = "See http://www.phash.org/ for more info. Note that you\nmust have libphash installed on your system to use this\nlibrary. Check your system library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = [ (pkgs."pHash" or ((hsPkgs.pkgs-errors).sysDepError "pHash")) ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
            ];
          libs = [
            (pkgs."pHash" or ((hsPkgs.pkgs-errors).sysDepError "pHash"))
            ];
          buildable = true;
          };
        "docs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."phash" or ((hsPkgs.pkgs-errors).buildDepError "phash"))
            ];
          libs = [
            (pkgs."pHash" or ((hsPkgs.pkgs-errors).sysDepError "pHash"))
            ];
          buildable = true;
          };
        };
      };
    }