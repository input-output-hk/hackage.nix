{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "xhb-ewmh"; version = "0.1.1.1"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "Jochen Keil <jochen.keil+xhb-ewmh@gmail.com>";
      author = "Jochen Keil";
      homepage = "http://github.com/jotrk/xhb-ewmh/";
      url = "";
      synopsis = "EWMH utilities for XHB";
      description = "EWMH utilities for XHB";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."xhb" or ((hsPkgs.pkgs-errors).buildDepError "xhb"))
          (hsPkgs."xhb-atom-cache" or ((hsPkgs.pkgs-errors).buildDepError "xhb-atom-cache"))
          ];
        buildable = true;
        };
      };
    }