{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "babylon"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2009 Pedro Vasconcelos";
      maintainer = "Pedro Vasconcelos <pbv@dcc.fc.up.pt>";
      author = "Pedro Vasconcelos <pbv@dcc.fc.up.pt>";
      homepage = "";
      url = "";
      synopsis = "An implementation of a simple 2-player board game";
      description = "The board game was originally designed by Bruno Faidutti (www.faidutti.com).\nIn this implementation you play against the computer.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "babylon" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."wx" or ((hsPkgs.pkgs-errors).buildDepError "wx"))
            (hsPkgs."wxcore" or ((hsPkgs.pkgs-errors).buildDepError "wxcore"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            ];
          buildable = true;
          };
        };
      };
    }