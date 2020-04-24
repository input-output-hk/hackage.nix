{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "tiger"; version = "1.1"; };
      license = "LicenseRef-GPL";
      copyright = "Universiteit Utrecht";
      maintainer = "Doaitse Swierstra";
      author = "";
      homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
      url = "";
      synopsis = "Tiger Compiler of Universiteit Utrecht";
      description = "Tiger compiler";
      buildType = "Custom";
      };
    components = {
      exes = {
        "tiger" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."uuagc" or ((hsPkgs.pkgs-errors).buildDepError "uuagc"))
            (hsPkgs."uuagc-cabal" or ((hsPkgs.pkgs-errors).buildDepError "uuagc-cabal"))
            ];
          buildable = true;
          };
        };
      };
    }