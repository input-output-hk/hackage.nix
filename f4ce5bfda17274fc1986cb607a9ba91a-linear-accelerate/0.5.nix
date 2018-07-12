{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "linear-accelerate";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2014 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett, Charles Durham, Trevor L. McDonell";
        homepage = "http://github.com/ekmett/linear-accelerate/";
        url = "";
        synopsis = "Lifting linear vector spaces into Accelerate";
        description = "Lifting linear vector spaces into Accelerate";
        buildType = "Custom";
      };
      components = {
        "linear-accelerate" = {
          depends  = [
            hsPkgs.base
            hsPkgs.accelerate
            hsPkgs.distributive
            hsPkgs.lens
            hsPkgs.linear
          ];
        };
        tests = {
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.linear-accelerate
            ];
          };
        };
      };
    }