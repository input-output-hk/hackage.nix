{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "monad-time"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrzej@scrive.com";
      author = "Andrzej Rybczak";
      homepage = "https://github.com/scrive/monad-time";
      url = "";
      synopsis = "Type class for monads which carry the notion of the current time.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }