{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hmatrix-csv"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Jochen Goertler";
      maintainer = "lyzrd17@gmail.com";
      author = "Jochen Goertler";
      homepage = "https://github.com/grtlr/hmatrix-csv";
      url = "";
      synopsis = "CSV encoding and decoding for hmatrix.";
      description = "Aims to provide easy CSV encoding and decoding of matrices.\nRight now only matrices of type 'Double' are supported.\nPlease feel free to report issues or possible improvements.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }