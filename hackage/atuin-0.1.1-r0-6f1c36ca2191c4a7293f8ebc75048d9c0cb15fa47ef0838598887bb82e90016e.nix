{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "atuin"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eb@cs.st-andrews.ac.uk";
      author = "Edwin Brady";
      homepage = "http://www.dcs.st-and.ac.uk/~eb/epic.php";
      url = "";
      synopsis = "Embedded Turtle language compiler in Haskell, with Epic output";
      description = "This language is a demonstration of the Epic compiler API.\nIt is a dynamically typed language with higher order\nfunctions and system interaction (specifically graphics).\nRequires SDL and SDL_gfx libraries, and their C headers.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "atuin" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."epic" or ((hsPkgs.pkgs-errors).buildDepError "epic"))
            ];
          buildable = true;
          };
        };
      };
    }