{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "persistable-record"; version = "0.5.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2017 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://khibino.github.io/haskell-relational-record/";
      url = "";
      synopsis = "Binding between SQL database values and haskell records.";
      description = "This package contiains types to represent table constraints and\ninterfaces to bind between SQL database values and Haskell records.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-data-compat" or ((hsPkgs.pkgs-errors).buildDepError "th-data-compat"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."names-th" or ((hsPkgs.pkgs-errors).buildDepError "names-th"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"));
        buildable = true;
        };
      tests = {
        "nested" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."quickcheck-simple" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-simple"))
            (hsPkgs."persistable-record" or ((hsPkgs.pkgs-errors).buildDepError "persistable-record"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"));
          buildable = true;
          };
        };
      };
    }