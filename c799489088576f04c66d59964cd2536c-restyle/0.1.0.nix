{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "restyle";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "(c) 2010 Daniel Fischer";
        maintainer = "Daniel Fischer <daniel.is.fischer@web.de>";
        author = "Daniel Fischer";
        homepage = "";
        url = "";
        synopsis = "Convert between camel case and separated words style.";
        description = "Functions to transform Haskell source files and\nhaddock(or HsColour)-produced HTML files from camel case\nto separated words or Haskell source from separated words\nto camel case.";
        buildType = "Simple";
      };
      components = {
        restyle = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          restyle = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }