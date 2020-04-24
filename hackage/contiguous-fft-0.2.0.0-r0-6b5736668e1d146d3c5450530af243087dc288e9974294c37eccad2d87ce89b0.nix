{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "contiguous-fft"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 (c) chessai";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/contiguous-fft";
      url = "";
      synopsis = "dft of contiguous memory structures";
      description = "DFT and iDFT on data structures implementing a common\ncontiguous interface";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."contiguous" or ((hsPkgs.pkgs-errors).buildDepError "contiguous"))
          (hsPkgs."semirings" or ((hsPkgs.pkgs-errors).buildDepError "semirings"))
          ];
        buildable = true;
        };
      };
    }