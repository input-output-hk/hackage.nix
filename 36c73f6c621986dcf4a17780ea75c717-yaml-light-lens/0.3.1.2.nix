{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yaml-light-lens";
          version = "0.3.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012-2013 Anthony Cowley";
        maintainer = "acowley@gmail.com";
        author = "Anthony Cowley";
        homepage = "";
        url = "";
        synopsis = "Lens interface to yaml-light.";
        description = "";
        buildType = "Simple";
      };
      components = {
        yaml-light-lens = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-lexing
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.yaml-light
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }