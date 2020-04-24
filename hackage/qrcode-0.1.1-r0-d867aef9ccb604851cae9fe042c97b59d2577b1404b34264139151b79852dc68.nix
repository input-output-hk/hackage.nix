{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { prof = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "qrcode"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chris@kizzx2.com";
      author = "Chris Yuen";
      homepage = "";
      url = "";
      synopsis = "QR Code library in pure Haskell";
      description = "QR Code encoder (and future decoder) in pure Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }