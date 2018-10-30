{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "hscolour";
        version = "1.16";
      };
      license = "LicenseRef-GPL";
      copyright = "2003-2010 Malcolm Wallace, University of York; 2006 Bjorn Bringert";
      maintainer = "Malcolm Wallace";
      author = "Malcolm Wallace";
      homepage = "http://www.cs.york.ac.uk/fp/darcs/hscolour/";
      url = "";
      synopsis = "Colourise Haskell code.";
      description = "hscolour is a small Haskell script to colourise Haskell code. It currently\nhas six output formats:\nANSI terminal codes,\nHTML 3.2 with <font> tags,\nHTML 4.01 with CSS,\nXHTML 1.0 with inline CSS styling,\nLaTeX,\nand mIRC chat codes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
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