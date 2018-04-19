{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "intern";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/intern/";
        url = "";
        synopsis = "Efficient hash-consing for arbitrary data types";
        description = "Efficient hash-consing for arbitrary data types";
        buildType = "Simple";
      };
      components = {
        intern = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.unordered-containers
            hsPkgs.hashable
          ];
        };
      };
    }