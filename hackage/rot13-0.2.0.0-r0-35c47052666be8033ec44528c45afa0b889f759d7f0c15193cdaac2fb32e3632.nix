{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rot13"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Kyle Van Berendonck, 2014";
      maintainer = "kvanberendonck@gmail.com";
      author = "Kyle Van Berendonck";
      homepage = "https://github.com/kvanberendonck/codec-rot13";
      url = "";
      synopsis = "Fast ROT13 cipher for Haskell.";
      description = "A fast ROT13 cipher for Haskell implemented using as few branches as possible.\nFor more information on ROT13, see: <https://en.wikipedia.org/wiki/ROT13>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."rot13" or ((hsPkgs.pkgs-errors).buildDepError "rot13"))
            ];
          buildable = true;
          };
        };
      };
    }