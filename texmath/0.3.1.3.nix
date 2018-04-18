{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      cgi = false;
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "texmath";
          version = "0.3.1.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jgm@berkeley.edu";
        author = "John MacFarlane";
        homepage = "http://github.com/jgm/texmath";
        url = "";
        synopsis = "Conversion of LaTeX math formulas to MathML.";
        description = "The texmathml library provides functions to convert LaTeX\nmath formulas to presentation MathML. It supports\nbasic LaTeX and AMS extensions, but not macros.";
        buildType = "Custom";
      };
      components = {
        texmath = {
          depends  = [
            hsPkgs.xml
            hsPkgs.parsec
            hsPkgs.containers
          ] ++ (if compiler.isGhc
            then [ hsPkgs.base hsPkgs.syb ]
            else [ hsPkgs.base ]);
        };
        exes = {
          testTeXMathML = {};
          texmath-cgi = {
            depends  = optionals _flags.cgi [
              hsPkgs.cgi
              hsPkgs.json
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }