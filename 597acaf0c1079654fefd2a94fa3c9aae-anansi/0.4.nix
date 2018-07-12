{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "anansi";
          version = "0.4";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/anansi/";
        url = "";
        synopsis = "Simple literate programming preprocessor";
        description = "Anansi is a preprocessor for literate programs, in the model of NoWeb or\nnuweb. Literate programming allows computer code and a human-readable\ndocument to be generated from the same source. Compared to NoWeb,\nAnansi&#x2019;s primary benefits are the ability to include separate files,\nand to automatically generate an entire directory tree from a project\nwithout having to enumerate each output.\n\nThis package is split into a library and an executable. The executable is\nsuitable for simple cases, such as generating basic HTML or LaTeX. The\nlibrary is useful for users who would like to write their own output formats\n(called &#x201C;looms&#x201D;).";
        buildType = "Simple";
      };
      components = {
        "anansi" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.monads-tf
            hsPkgs.parsec
            hsPkgs.system-argv0
            hsPkgs.system-filepath
            hsPkgs.system-fileio
            hsPkgs.text
          ];
        };
        exes = {
          "anansi" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.monads-tf
              hsPkgs.parsec
              hsPkgs.system-argv0
              hsPkgs.system-filepath
              hsPkgs.system-fileio
              hsPkgs.text
            ];
          };
        };
      };
    }