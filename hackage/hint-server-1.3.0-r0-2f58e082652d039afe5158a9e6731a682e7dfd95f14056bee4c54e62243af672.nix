{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hint-server"; version = "1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2009 Fernando \"Brujo\" Benavides";
      maintainer = "corentin.dupont@gmail.com";
      author = "Fernando \"Brujo\" Benavides";
      homepage = "";
      url = "";
      synopsis = "A server process that runs hint.";
      description = "This library provides a server process (implemented using eprocess) that can receive and run actions in the Interpreter monad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          (hsPkgs."hint" or ((hsPkgs.pkgs-errors).buildDepError "hint"))
          (hsPkgs."eprocess" or ((hsPkgs.pkgs-errors).buildDepError "eprocess"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          ];
        buildable = true;
        };
      };
    }