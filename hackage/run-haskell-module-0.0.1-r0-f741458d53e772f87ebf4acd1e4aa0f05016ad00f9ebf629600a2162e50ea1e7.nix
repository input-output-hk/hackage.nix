{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "run-haskell-module"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright by Michal J. Gajda '2014-'2020";
      maintainer = "simons@cryp.to,\nmjgajda@gmail.com";
      author = "Michal J. Gajda,\nDmitrii Krylov";
      homepage = "";
      url = "";
      synopsis = "Running newly generated Haskell source module.";
      description = "To make sure freshly generated code runs,\nwe need to make it run in Stack/Cabal/GHC environment.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          ];
        buildable = true;
        };
      };
    }