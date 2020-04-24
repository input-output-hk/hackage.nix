{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "BASIC"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Augustsson";
      author = "Lennart Augustsson";
      homepage = "";
      url = "";
      synopsis = "Embedded BASIC";
      description = "A simplified version of the original BASIC embedded in Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."llvm" or ((hsPkgs.pkgs-errors).buildDepError "llvm"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."timeit" or ((hsPkgs.pkgs-errors).buildDepError "timeit"))
          ];
        buildable = true;
        };
      };
    }