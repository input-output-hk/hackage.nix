{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hscolour";
          version = "1.9";
        };
        license = "LicenseRef-GPL";
        copyright = "Malcolm Wallace, University of York, 2003-2007, Bjorn Bringert 2006";
        maintainer = "Malcolm Wallace";
        author = "Malcolm Wallace";
        homepage = "http://www.cs.york.ac.uk/fp/darcs/hscolour/";
        url = "";
        synopsis = "Colourise Haskell code.";
        description = "hscolour is a small Haskell script to colourise Haskell code. It currently\nhas four output formats:\nANSI terminal codes, HTML 3.2 with <font> tags, HTML 4.01 with CSS, and LaTeX.";
        buildType = "Custom";
      };
      components = {
        hscolour = {
          depends  = [
            hsPkgs.haskell98
            hsPkgs.base
          ];
        };
        exes = {
          HsColour = {
            depends  = [
              hsPkgs.haskell98
              hsPkgs.base
            ];
          };
        };
      };
    }