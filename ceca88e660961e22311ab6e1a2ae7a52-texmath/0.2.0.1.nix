{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      cgi = true;
      test = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "texmath";
          version = "0.2.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jgm@berkeley.edu";
        author = "John MacFarlane";
        homepage = "http://github.com/jgm/texmath";
        url = "";
        synopsis = "Conversion of LaTeX math formulas to MathML.";
        description = "The texmathml library provides functions to convert LaTeX\nmath formulas to presentation MathML. It supports\nbasic LaTeX and AMS extensions, but not macros.";
        buildType = "Simple";
      };
      components = {
        texmath = {
          depends  = [
            hsPkgs.xml
            hsPkgs.parsec
          ] ++ (if compiler.isGhc
            then [
              hsPkgs.base
              hsPkgs.containers
            ]
            else [ hsPkgs.base ]);
        };
        exes = {
          testTeXMathML = {};
          texmath-cgi = {
            depends  = [
              hsPkgs.cgi
              hsPkgs.json
            ];
          };
        };
      };
    }