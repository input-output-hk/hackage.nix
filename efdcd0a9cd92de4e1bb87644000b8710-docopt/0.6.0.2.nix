{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "docopt";
          version = "0.6.0.2";
        };
        license = "MIT";
        copyright = "(c) 2013 Ryan Artecona";
        maintainer = "ryanartecona@gmail.com";
        author = "Ryan Artecona";
        homepage = "https://github.com/docopt/docopt.hs";
        url = "";
        synopsis = "A command-line interface parser that will make you smile";
        description = "Docopt parses command-line interface usage text that adheres to a familiar syntax, and from it builds a command-line argument parser that will ensure your program is invoked correctly with the available options specified in the usage text. This allows the developer to write a usage text and get an argument parser for free.";
        buildType = "Simple";
      };
      components = {
        docopt = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.containers
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.docopt
              hsPkgs.split
              hsPkgs.ansi-terminal
              hsPkgs.aeson
              hsPkgs.bytestring
            ];
          };
        };
      };
    }