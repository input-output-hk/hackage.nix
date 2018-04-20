{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      cgi = false;
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "texmath";
          version = "0.6.0.4";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jgm@berkeley.edu";
        author = "John MacFarlane";
        homepage = "http://github.com/jgm/texmath";
        url = "";
        synopsis = "Conversion of LaTeX math formulas to MathML or OMML.";
        description = "The texmathml library provides functions to convert LaTeX\nmath formulas to presentation MathML (which can be used\nin HTML) or OMML (Office Math Markup Language, used in\nMicrosoft Office). It supports basic LaTeX and AMS\nextensions, and it can parse and apply LaTeX macros.\n\nUse the @test@ flag to install a standalone executable,\n@texmath@, that reads a LaTeX formula from @stdin@ and\nwrites MathML to @stdout@.\n\nUse the @cgi@ flag to install a cgi script,\n@texmath-cgi@.";
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
          texmath = {};
          texmath-cgi = {
            depends  = pkgs.lib.optionals _flags.cgi [
              hsPkgs.cgi
              hsPkgs.json
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }