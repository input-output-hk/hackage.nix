{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "superconstraints"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Ryan Trinkle";
      maintainer = "Ryan Trinkle <ryan.trinkle@gmail.com";
      author = "Ryan Trinkle";
      homepage = "http://github.com/ryantrinkle/superconstraints";
      url = "";
      synopsis = "Access an instance's constraints";
      description = "Constraint manipulation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."type-eq" or ((hsPkgs.pkgs-errors).buildDepError "type-eq"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          ];
        buildable = true;
        };
      };
    }