{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "repl-toolkit"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "janos.tapolczai@gmail.com";
      author = "Janos Tapolczai";
      homepage = "https://github.com/ombocomp/repl-toolkit";
      url = "";
      synopsis = "Toolkit for quickly whipping up command-line interfaces.";
      description = "A simple toolkit for quickly whipping up REPLs, input validation and sets of commands included.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."functor-monadic" or ((hsPkgs.pkgs-errors).buildDepError "functor-monadic"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."ListLike" or ((hsPkgs.pkgs-errors).buildDepError "ListLike"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."numericpeano" or ((hsPkgs.pkgs-errors).buildDepError "numericpeano"))
          (hsPkgs."listsafe" or ((hsPkgs.pkgs-errors).buildDepError "listsafe"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          ];
        buildable = true;
        };
      };
    }