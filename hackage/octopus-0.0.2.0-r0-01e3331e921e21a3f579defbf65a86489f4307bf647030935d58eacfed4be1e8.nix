{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "octopus"; version = "0.0.2.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "zankoku.okuno@gmail.com";
      author = "Zankoku Okuno";
      homepage = "https://github.com/Zankoku-Okuno/octopus/";
      url = "";
      synopsis = "Lisp with more dynamism, more power, more simplicity.";
      description = "Octopus is a highly dynamic programming language with an astounding (I think)\npower-to-weight ratio (expressivity-to-complexity). With just a handful of\nsimple primitives, Octopus provides a complete programming environment. Its\nmain focus is on complete programmer control, not on performance or static\nanalysis. While the user can shoot themselves, the most natural methods will\nbe the most reasonable.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."symbol" or ((hsPkgs.pkgs-errors).buildDepError "symbol"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."hexpr" or ((hsPkgs.pkgs-errors).buildDepError "hexpr"))
          ];
        buildable = true;
        };
      exes = {
        "octi" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."symbol" or ((hsPkgs.pkgs-errors).buildDepError "symbol"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."hexpr" or ((hsPkgs.pkgs-errors).buildDepError "hexpr"))
            ];
          buildable = true;
          };
        };
      };
    }