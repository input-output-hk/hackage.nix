{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "linkcore"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chevalier@alum.wellesley.edu";
      author = "Tim Chevalier";
      homepage = "";
      url = "";
      synopsis = "Combines multiple GHC Core modules into a single module";
      description = "Combines multiple GHC Core modules into a single module";
      buildType = "Simple";
      };
    components = {
      exes = {
        "linkcore" = {
          depends = [
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."extcore" or ((hsPkgs.pkgs-errors).buildDepError "extcore"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }