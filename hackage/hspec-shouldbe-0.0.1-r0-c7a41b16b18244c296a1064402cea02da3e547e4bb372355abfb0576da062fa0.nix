{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hspec-shouldbe"; version = "0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Convenience wrapper and utilities for hspec";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."test-shouldbe" or ((hsPkgs.pkgs-errors).buildDepError "test-shouldbe"))
          ];
        buildable = true;
        };
      };
    }