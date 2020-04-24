{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hint-server"; version = "1.2.2"; };
      license = "BSD-3-Clause";
      copyright = "2009 Fernando \"Brujo\" Benavides";
      maintainer = "corentin.dupont@gmail.com";
      author = "Fernando \"Brujo\" Benavides";
      homepage = "";
      url = "http://code.haskell.org/hint-server";
      synopsis = "A server process that runs hint.";
      description = "This library provides a server process (implemented using eprocess) that can receive and run actions in the Interpreter monad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          (hsPkgs."hint" or ((hsPkgs.pkgs-errors).buildDepError "hint"))
          (hsPkgs."hint" or ((hsPkgs.pkgs-errors).buildDepError "hint"))
          (hsPkgs."eprocess" or ((hsPkgs.pkgs-errors).buildDepError "eprocess"))
          (hsPkgs."eprocess" or ((hsPkgs.pkgs-errors).buildDepError "eprocess"))
          ];
        buildable = true;
        };
      };
    }