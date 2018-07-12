{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "foreign-var";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2014-2015 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/foreign-var/";
        url = "";
        synopsis = "Encapsulating mutatable state in external libraries";
        description = "Encapsulating mutatable state in external libraries";
        buildType = "Simple";
      };
      components = {
        "foreign-var" = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.transformers
          ];
        };
      };
    }