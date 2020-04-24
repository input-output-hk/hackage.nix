{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "QuadEdge"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "NHAlxr@gmail.com";
      author = "Neal Alexander";
      homepage = "";
      url = "";
      synopsis = "QuadEdge structure for representing triangulations";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }