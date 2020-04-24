{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "data-transform"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Jonas Scholl";
      maintainer = "jonas.scholl@gmx.de";
      author = "Jonas Scholl";
      homepage = "";
      url = "";
      synopsis = "Functions to transform data structures.";
      description = "This library provides a simple way to transform parts of\ncomplex data structures. It is based on Data.Data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }