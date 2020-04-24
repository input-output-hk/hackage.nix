{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ddci-core"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "benl@ouroborus.net";
      author = "Ben Lippmeier";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciple Core language interactive interpreter.";
      description = "DDCi-core is a user-facing interpreter that can type-check,\ntransform and evaluate expressions.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ddci-core" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."ddc-base" or ((hsPkgs.pkgs-errors).buildDepError "ddc-base"))
            (hsPkgs."ddc-core" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core"))
            (hsPkgs."ddc-core-eval" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-eval"))
            (hsPkgs."ddc-core-simpl" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-simpl"))
            ];
          buildable = true;
          };
        };
      };
    }