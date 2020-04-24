{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { new_type_eq = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "HList"; version = "0.4.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "oleg@pobox.com";
      author = "2004 Oleg Kiselyov (FNMOC, Monterey), Ralf Laemmel (CWI/VU, Amsterdam),\nKeean Schupke (London)";
      homepage = "";
      url = "";
      synopsis = "Heterogeneous lists";
      description = "HList provides many operations to create and manipulate\nheterogenous lists (HLists) whose length and element\ntypes are known at compile-time. HLists are used to implement\n\n* records\n* variants\n* type-indexed products (TIP)\n* type-indexed co-products (TIC)\n* keyword arguments\n\nUser code should import \"Data.HList\" or\n\"Data.HList.CommonMain\" for a slightly more limited scope";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ] ++ (pkgs.lib).optional (flags.new_type_eq) (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"));
        buildable = true;
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = if compiler.isGhc && (compiler.version).le "7.9"
            then false
            else true;
          };
        "properties" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ];
          buildable = true;
          };
        };
      };
    }