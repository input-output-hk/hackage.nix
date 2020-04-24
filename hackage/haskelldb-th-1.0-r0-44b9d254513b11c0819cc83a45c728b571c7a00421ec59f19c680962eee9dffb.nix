{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "haskelldb-th"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "The authors";
      maintainer = "jgbailey@gmail.com";
      author = "\"Justin Bailey \" <jgbailey@gmail.com>";
      homepage = "http://patch-tag.com/publicrepos/haskelldb-th";
      url = "";
      synopsis = "Template Haskell utilities for HaskellDB.";
      description = "Utility functions that make defining tables, fields, and queries in\nHaskellDB simpler.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskelldb" or ((hsPkgs.pkgs-errors).buildDepError "haskelldb"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }