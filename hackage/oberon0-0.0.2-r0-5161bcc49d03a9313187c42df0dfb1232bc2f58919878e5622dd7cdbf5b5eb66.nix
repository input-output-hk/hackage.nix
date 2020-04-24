{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      l1 = false;
      l2 = false;
      l3 = false;
      l4 = false;
      t1 = false;
      t2 = false;
      t3 = false;
      t5 = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "oberon0"; version = "0.0.2"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Marcos Viera <mviera@fing.edu.uy>";
      author = "Marcos Viera";
      homepage = "http://www.cs.uu.nl/wiki/Center/CoCoCo";
      url = "";
      synopsis = "Oberon0 Compiler";
      description = "Oberon0 compiler (from LDTA 2011 challenge) implementation using CoCoCo";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
          (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
          (hsPkgs."murder" or ((hsPkgs.pkgs-errors).buildDepError "murder"))
          (hsPkgs."AspectAG" or ((hsPkgs.pkgs-errors).buildDepError "AspectAG"))
          (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
          ] ++ (pkgs.lib).optional (flags.t5) (hsPkgs."language-c" or ((hsPkgs.pkgs-errors).buildDepError "language-c"));
        buildable = true;
        };
      exes = {
        "l1t1" = {
          depends = [
            (hsPkgs."oberon0" or ((hsPkgs.pkgs-errors).buildDepError "oberon0"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."AspectAG" or ((hsPkgs.pkgs-errors).buildDepError "AspectAG"))
            (hsPkgs."murder" or ((hsPkgs.pkgs-errors).buildDepError "murder"))
            (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
            (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
            (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
            ];
          buildable = if !(flags.l1 && flags.t1) then false else true;
          };
        "l1t2" = {
          depends = [
            (hsPkgs."oberon0" or ((hsPkgs.pkgs-errors).buildDepError "oberon0"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."AspectAG" or ((hsPkgs.pkgs-errors).buildDepError "AspectAG"))
            (hsPkgs."murder" or ((hsPkgs.pkgs-errors).buildDepError "murder"))
            (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
            (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
            (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
            ];
          buildable = if !(flags.l1 && flags.t2) then false else true;
          };
        "l1t3" = {
          depends = [
            (hsPkgs."oberon0" or ((hsPkgs.pkgs-errors).buildDepError "oberon0"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."AspectAG" or ((hsPkgs.pkgs-errors).buildDepError "AspectAG"))
            (hsPkgs."murder" or ((hsPkgs.pkgs-errors).buildDepError "murder"))
            (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
            (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
            (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
            ];
          buildable = if !(flags.l1 && flags.t3) then false else true;
          };
        "l1t5" = {
          depends = [
            (hsPkgs."oberon0" or ((hsPkgs.pkgs-errors).buildDepError "oberon0"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."AspectAG" or ((hsPkgs.pkgs-errors).buildDepError "AspectAG"))
            (hsPkgs."murder" or ((hsPkgs.pkgs-errors).buildDepError "murder"))
            (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
            (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
            (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
            (hsPkgs."language-c" or ((hsPkgs.pkgs-errors).buildDepError "language-c"))
            ];
          buildable = if !(flags.l1 && flags.t5) then false else true;
          };
        "l2t1" = {
          depends = [
            (hsPkgs."oberon0" or ((hsPkgs.pkgs-errors).buildDepError "oberon0"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."AspectAG" or ((hsPkgs.pkgs-errors).buildDepError "AspectAG"))
            (hsPkgs."murder" or ((hsPkgs.pkgs-errors).buildDepError "murder"))
            (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
            (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
            (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
            ];
          buildable = if !(flags.l2 && flags.t1) then false else true;
          };
        "l2t2" = {
          depends = [
            (hsPkgs."oberon0" or ((hsPkgs.pkgs-errors).buildDepError "oberon0"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."AspectAG" or ((hsPkgs.pkgs-errors).buildDepError "AspectAG"))
            (hsPkgs."murder" or ((hsPkgs.pkgs-errors).buildDepError "murder"))
            (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
            (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
            (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
            ];
          buildable = if !(flags.l2 && flags.t2) then false else true;
          };
        "l2t3" = {
          depends = [
            (hsPkgs."oberon0" or ((hsPkgs.pkgs-errors).buildDepError "oberon0"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."AspectAG" or ((hsPkgs.pkgs-errors).buildDepError "AspectAG"))
            (hsPkgs."murder" or ((hsPkgs.pkgs-errors).buildDepError "murder"))
            (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
            (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
            (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
            ];
          buildable = if !(flags.l2 && flags.t3) then false else true;
          };
        "l2t5" = {
          depends = [
            (hsPkgs."oberon0" or ((hsPkgs.pkgs-errors).buildDepError "oberon0"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."AspectAG" or ((hsPkgs.pkgs-errors).buildDepError "AspectAG"))
            (hsPkgs."murder" or ((hsPkgs.pkgs-errors).buildDepError "murder"))
            (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
            (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
            (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
            (hsPkgs."language-c" or ((hsPkgs.pkgs-errors).buildDepError "language-c"))
            ];
          buildable = if !(flags.l2 && flags.t5) then false else true;
          };
        "l3t1" = {
          depends = [
            (hsPkgs."oberon0" or ((hsPkgs.pkgs-errors).buildDepError "oberon0"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."AspectAG" or ((hsPkgs.pkgs-errors).buildDepError "AspectAG"))
            (hsPkgs."murder" or ((hsPkgs.pkgs-errors).buildDepError "murder"))
            (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
            (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
            (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
            ];
          buildable = if !(flags.l3 && flags.t1) then false else true;
          };
        "l3t2" = {
          depends = [
            (hsPkgs."oberon0" or ((hsPkgs.pkgs-errors).buildDepError "oberon0"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."AspectAG" or ((hsPkgs.pkgs-errors).buildDepError "AspectAG"))
            (hsPkgs."murder" or ((hsPkgs.pkgs-errors).buildDepError "murder"))
            (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
            (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
            (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
            ];
          buildable = if !(flags.l3 && flags.t2) then false else true;
          };
        "l3t3" = {
          depends = [
            (hsPkgs."oberon0" or ((hsPkgs.pkgs-errors).buildDepError "oberon0"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."AspectAG" or ((hsPkgs.pkgs-errors).buildDepError "AspectAG"))
            (hsPkgs."murder" or ((hsPkgs.pkgs-errors).buildDepError "murder"))
            (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
            (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
            (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
            ];
          buildable = if !(flags.l3 && flags.t3) then false else true;
          };
        "l3t5" = {
          depends = [
            (hsPkgs."oberon0" or ((hsPkgs.pkgs-errors).buildDepError "oberon0"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."AspectAG" or ((hsPkgs.pkgs-errors).buildDepError "AspectAG"))
            (hsPkgs."murder" or ((hsPkgs.pkgs-errors).buildDepError "murder"))
            (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
            (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
            (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
            (hsPkgs."language-c" or ((hsPkgs.pkgs-errors).buildDepError "language-c"))
            ];
          buildable = if !(flags.l3 && flags.t5) then false else true;
          };
        "l4t1" = {
          depends = [
            (hsPkgs."oberon0" or ((hsPkgs.pkgs-errors).buildDepError "oberon0"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."AspectAG" or ((hsPkgs.pkgs-errors).buildDepError "AspectAG"))
            (hsPkgs."murder" or ((hsPkgs.pkgs-errors).buildDepError "murder"))
            (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
            (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
            (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
            ];
          buildable = if !(flags.l4 && flags.t1) then false else true;
          };
        "l4t2" = {
          depends = [
            (hsPkgs."oberon0" or ((hsPkgs.pkgs-errors).buildDepError "oberon0"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."AspectAG" or ((hsPkgs.pkgs-errors).buildDepError "AspectAG"))
            (hsPkgs."murder" or ((hsPkgs.pkgs-errors).buildDepError "murder"))
            (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
            (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
            (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
            ];
          buildable = if !(flags.l4 && flags.t2) then false else true;
          };
        "l4t3" = {
          depends = [
            (hsPkgs."oberon0" or ((hsPkgs.pkgs-errors).buildDepError "oberon0"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."AspectAG" or ((hsPkgs.pkgs-errors).buildDepError "AspectAG"))
            (hsPkgs."murder" or ((hsPkgs.pkgs-errors).buildDepError "murder"))
            (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
            (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
            (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
            ];
          buildable = if !(flags.l4 && flags.t3) then false else true;
          };
        "l4t5" = {
          depends = [
            (hsPkgs."oberon0" or ((hsPkgs.pkgs-errors).buildDepError "oberon0"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."AspectAG" or ((hsPkgs.pkgs-errors).buildDepError "AspectAG"))
            (hsPkgs."murder" or ((hsPkgs.pkgs-errors).buildDepError "murder"))
            (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
            (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
            (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
            (hsPkgs."language-c" or ((hsPkgs.pkgs-errors).buildDepError "language-c"))
            ];
          buildable = if !(flags.l4 && flags.t5) then false else true;
          };
        };
      };
    }