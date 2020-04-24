{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "lostcities"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2009 Pedro Vasconcelos";
      maintainer = "pbv@dcc.fc.up.pt";
      author = "Pedro Vasconcelos";
      homepage = "http://www.dcc.fc.up.pt/~pbv/stuff/lostcities";
      url = "";
      synopsis = "An implementation of an adictive two-player card game";
      description = "Game originally designed by Reiner Knizia\nIn this implementation you play against the computer.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lostcities" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
            (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
            ];
          buildable = true;
          };
        };
      };
    }