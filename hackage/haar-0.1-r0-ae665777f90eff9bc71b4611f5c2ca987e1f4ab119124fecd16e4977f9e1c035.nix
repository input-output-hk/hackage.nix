{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "haar"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Amy de Buitléir 2010-2012";
      maintainer = "amy@nualeargais.ie";
      author = "Amy de Buitléir";
      homepage = "https://github.com/mhwombat/haar";
      url = "";
      synopsis = "Haar wavelet transforms";
      description = "A Haar wavelet transform represents a sequence using\nsquare waves as basis vectors.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          ];
        buildable = true;
        };
      tests = {
        "haar-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."haar" or ((hsPkgs.pkgs-errors).buildDepError "haar"))
            ];
          buildable = true;
          };
        };
      };
    }