{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "jacobi-roots"; version = "0.2.0.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2013 Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "http://github.com/ghorn/jacobi-roots";
      url = "";
      synopsis = "Roots of two shifted Jacobi polynomials (Legendre and Radau) to double precision";
      description = "This package provides roots of shifted Radau and Legendre polynomials to double precision.\n\nThe roots are precomputed using a Mathematica script, and degrees of up to a few hundred are provided.\n\nSee the \"JacobiRoots\" module for documentation\n\nTo build this from scratch, first run compute_roots.nb in Mathematica to generate gen/JacobiRootsRaw300.hs. Then type \"make\" to run gen/Convert.hs, which creates src/JacobiRootsBinary.hs. Then the normal \"cabal configure; cabal build\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }