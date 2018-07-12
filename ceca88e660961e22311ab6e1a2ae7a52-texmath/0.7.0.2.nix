{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      executable = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "texmath";
          version = "0.7.0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jgm@berkeley.edu";
        author = "John MacFarlane, Matthew Pickering";
        homepage = "http://github.com/jgm/texmath";
        url = "";
        synopsis = "Conversion between formats used to represent mathematics.";
        description = "The texmath library provides functions to read and\nwrite formats used to represent mathematics.\nThe package is able to read and write both TeX math and\npresentation MathML. Support is also included for\nwriting OMML (Office Math Markup Language, used in\nMicrosoft Office) and pandoc's native format (allowing\nconversion, via pandoc, to a variety of different markup\nformats).  It supports basic LaTeX and AMS extensions,\nand it can parse and apply LaTeX macros.\n(See <http://johnmacfarlane.net/texmath here> for a live\ndemo of bidirectional conversion between LaTeX\nand MathML.)\n\nThe package also includes several utility modules which\nmay be useful for anyone looking to manipulate either\nUnicode or MathML.  For example, a copy of the MathML\noperator dictionary is included.\n\nUse the @executable@ flag to install a standalone\nexecutable, @texmath@, that by default reads a LaTeX\nformula from @stdin@ and writes MathML to @stdout@.\nWith flags all the functionality exposed by\n'Text.TeXMath' can be accessed through this executable.\n(Use the @--help@ flag for a description of all\nfunctionality)\n\nThe @texmath@ executable can also be used as a CGI\nscript, when renamed as @texmath-cgi@.\nIt will expect query parameters for @from@, @to@,\n@input@, and optionally @inline@, and return a JSON\nobject with either @error@ and a message or\n@success@ and the converted result.";
        buildType = "Simple";
      };
      components = {
        "texmath" = {
          depends  = [
            hsPkgs.xml
            hsPkgs.parsec
            hsPkgs.containers
            hsPkgs.pandoc-types
            hsPkgs.mtl
          ] ++ (if compiler.isGhc && compiler.version.ge "6.10"
            then [ hsPkgs.base hsPkgs.syb ]
            else [ hsPkgs.base ]);
        };
        exes = {
          "texmath" = {
            depends  = pkgs.lib.optionals _flags.executable [
              hsPkgs.base
              hsPkgs.texmath
              hsPkgs.xml
              hsPkgs.pandoc-types
              hsPkgs.network
              hsPkgs.split
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.text
            ];
          };
        };
        tests = {
          "test-texmath" = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.texmath
              hsPkgs.xml
              hsPkgs.utf8-string
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.split
            ];
          };
        };
      };
    }