{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      lib-werror = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "parsers";
          version = "0.7";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2010-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/parsers/";
        url = "";
        synopsis = "Parsing combinators";
        description = "Parsing combinators";
        buildType = "Custom";
      };
      components = {
        parsers = {
          depends  = [
            hsPkgs.base
            hsPkgs.charset
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
        };
      };
    }