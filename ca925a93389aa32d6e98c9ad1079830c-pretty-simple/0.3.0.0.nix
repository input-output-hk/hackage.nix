{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pretty-simple";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Dennis Gosnell";
        maintainer = "cdep.illabout@gmail.com";
        author = "Dennis Gosnell";
        homepage = "https://github.com/cdepillabout/pretty-simple";
        url = "";
        synopsis = "Simple pretty printer for any datatype with a 'Show' instance.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        pretty-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.ansi-terminal
            hsPkgs.lens
            hsPkgs.mono-traversable
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.semigroups
            hsPkgs.transformers
          ];
        };
        tests = {
          pretty-simple-doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.Glob
            ];
          };
        };
      };
    }