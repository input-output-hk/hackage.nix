{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tree-fun"; version = "0.8.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "gs394@drexel.edu";
      author = "Gregory Schwartz";
      homepage = "";
      url = "";
      synopsis = "Library for functions pertaining to tree exploration and manipulation";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }