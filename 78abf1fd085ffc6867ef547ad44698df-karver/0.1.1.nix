{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "karver";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 Jeremy Hull";
        maintainer = "Jeremy Hull <sourdrums@gmail.com>";
        author = "Jeremy Hull <sourdrums@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A simple template engine, inspired by jinja2";
        description = "Karver is heavily inspired by the python project jinja2,\nat least syntactic wise. This template engine strives to\nbe simple and fast, leveraging libraries like attoparsec\nand data types like Text.";
        buildType = "Simple";
      };
      components = {
        karver = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.aeson
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.karver
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.unordered-containers
              hsPkgs.attoparsec
              hsPkgs.vector
              hsPkgs.hspec
            ];
          };
        };
      };
    }