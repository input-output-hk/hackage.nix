{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "resistor-cube"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/resistor-cube";
      url = "";
      synopsis = "Compute total resistance of a cube of resistors";
      description = "This is an example of how to compute the total resistance\nof a non-trivial circuit of resistors.\nIt demonstrates how to build the necessary matrix.\nThe computed voltages and currents\nare elements of the null vector of that matrix.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "resistor-cube" = {
          depends = [
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }