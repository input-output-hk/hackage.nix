{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hscolour"; version = "1.6"; };
      license = "LicenseRef-GPL";
      copyright = "Malcolm Wallace, University of York, 2003-2005, Bjorn Bringert 2006";
      maintainer = "Malcolm Wallace";
      author = "Malcolm Wallace";
      homepage = "http://www.cs.york.ac.uk/fp/darcs/hscolour/";
      url = "";
      synopsis = "Colourise Haskell code.";
      description = "hscolour is a small Haskell script to colourise Haskell code. It currently\nhas four output formats:\nANSI terminal codes, HTML with <font> tags, HTML with CSS, and LaTeX.";
      buildType = "Custom";
      };
    components = {
      "library" = { depends = [ (hsPkgs.haskell98) (hsPkgs.base) ]; };
      exes = {
        "HsColour" = { depends = [ (hsPkgs.haskell98) (hsPkgs.base) ]; };
        };
      };
    }