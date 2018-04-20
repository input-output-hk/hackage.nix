{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      cgi = false;
      executable = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "texmath";
          version = "0.6.7";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jgm@berkeley.edu";
        author = "John MacFarlane";
        homepage = "http://github.com/jgm/texmath";
        url = "";
        synopsis = "Conversion of LaTeX math formulas to MathML or OMML.";
        description = "The texmathml library provides functions to convert LaTeX\nmath formulas to presentation MathML (which can be used\nin HTML) or OMML (Office Math Markup Language, used in\nMicrosoft Office). It supports basic LaTeX and AMS\nextensions, and it can parse and apply LaTeX macros.\n\nUse the @executable@ flag to install a standalone executable,\n@texmath@, that reads a LaTeX formula from @stdin@ and\nwrites MathML to @stdout@.\n\nUse the @cgi@ flag to install a cgi script,\n@texmath-cgi@.";
        buildType = "Simple";
      };
      components = {
        texmath = {
          depends  = [
            hsPkgs.xml
            hsPkgs.parsec
            hsPkgs.containers
            hsPkgs.pandoc-types
            hsPkgs.mtl
          ] ++ (if compiler.isGhc
            then [ hsPkgs.base hsPkgs.syb ]
            else [ hsPkgs.base ]);
        };
        exes = {
          texmath = {
            depends  = pkgs.lib.optionals _flags.executable [
              hsPkgs.base
              hsPkgs.texmath
              hsPkgs.xml
            ];
          };
          texmath-cgi = {
            depends  = pkgs.lib.optionals _flags.cgi [
              hsPkgs.base
              hsPkgs.texmath
              hsPkgs.xml
              hsPkgs.cgi
              hsPkgs.json
              hsPkgs.utf8-string
            ];
          };
        };
        tests = {
          test-texmath = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.texmath
              hsPkgs.xml
              hsPkgs.utf8-string
              hsPkgs.bytestring
            ];
          };
        };
      };
    }