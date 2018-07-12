{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "forml";
          version = "0.1.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "steinlink@gmail.com";
        author = "Andrew Stein";
        homepage = "http://texodus.github.com/forml";
        url = "";
        synopsis = "A statically typed, functional programming language";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          "forml" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.parsec
              hsPkgs.indents
              hsPkgs.containers
              hsPkgs.GraphSCC
              hsPkgs.pandoc
              hsPkgs.jmacro
              hsPkgs.MissingH
              hsPkgs.interpolatedstring-perl6
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.wl-pprint-text
              hsPkgs.ansi-terminal
              hsPkgs.HTTP
              hsPkgs.network
              hsPkgs.urlencoded
              hsPkgs.file-embed
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }