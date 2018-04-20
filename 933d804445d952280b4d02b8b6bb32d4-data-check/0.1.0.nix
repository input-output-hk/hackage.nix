{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-check";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov@openmailbox.org>";
        author = "Mark Karpov <markkarpov@openmailbox.org>";
        homepage = "https://github.com/mrkkrp/data-check";
        url = "";
        synopsis = "Library for checking and normalization of data (e.g. from web forms)";
        description = "Library for checking and normalization of data (e.g. from web forms).";
        buildType = "Simple";
      };
      components = {
        data-check = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.data-check
              hsPkgs.hspec
            ];
          };
        };
      };
    }