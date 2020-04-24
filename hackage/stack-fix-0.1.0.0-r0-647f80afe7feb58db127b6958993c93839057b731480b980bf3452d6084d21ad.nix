{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "stack-fix"; version = "0.1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "razvan.panda@gmail.com";
      author = "Răzvan Flavius Panda";
      homepage = "https://github.com/razvan-panda/haskell-stack-fix";
      url = "";
      synopsis = "Console program used to fix Stack build errors automatically";
      description = "Stack fix works by running `stack build` and by parsing and interpreting the build errors/suggestions it applies any build fixes required to the stack.yaml, .cabal, etc. These fixes usually involve specifying build dependencies versions or adding new build dependencies.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "stack-fix" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."turtle" or ((hsPkgs.pkgs-errors).buildDepError "turtle"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."options" or ((hsPkgs.pkgs-errors).buildDepError "options"))
            ];
          buildable = true;
          };
        };
      };
    }