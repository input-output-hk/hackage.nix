{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hmatrix-nlopt"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Matthew Peddie <mpeddie@gmail.com>";
      maintainer = "mpeddie@gmail.com";
      author = "Matthew Peddie";
      homepage = "https://github.com/peddie/hmatrix-nlopt";
      url = "";
      synopsis = "Interface HMatrix with the NLOPT minimizer";
      description = "A high-level interface to\n<http://ab-initio.mit.edu/wiki/index.php/NLopt the NLOPT solvers>\nusing @hmatrix@ vectors and matrices.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."nlopt-haskell" or ((hsPkgs.pkgs-errors).buildDepError "nlopt-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }