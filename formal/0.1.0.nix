{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "formal";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "steinlink@gmail.com";
        author = "Andrew Stein";
        homepage = "";
        url = "";
        synopsis = "A statically typed, functional programming language";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          formal = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.parsec
              hsPkgs.indents
              hsPkgs.containers
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
            ];
          };
        };
      };
    }