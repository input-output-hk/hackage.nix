{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "hscolour";
        version = "1.10";
      };
      license = "LicenseRef-GPL";
      copyright = "Malcolm Wallace, University of York, 2003-2007, Bjorn Bringert 2006";
      maintainer = "Malcolm Wallace";
      author = "Malcolm Wallace";
      homepage = "http://www.cs.york.ac.uk/fp/darcs/hscolour/";
      url = "";
      synopsis = "Colourise Haskell code.";
      description = "hscolour is a small Haskell script to colourise Haskell code. It currently\nhas five output formats:\nANSI terminal codes,\nHTML 3.2 with <font> tags,\nHTML 4.01 with CSS,\nLaTeX,\nand mIRC chat codes.";
      buildType = "Simple";
    };
    components = {
      "hscolour" = {
        depends  = [
          (hsPkgs.haskell98)
          (hsPkgs.base)
        ];
      };
      exes = {
        "HsColour" = {
          depends  = [
            (hsPkgs.haskell98)
            (hsPkgs.base)
          ];
        };
      };
    };
  }