{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "errorcall-eq-instance";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "(c) 2013 Simon Hengel";
        maintainer = "";
        author = "";
        homepage = "";
        url = "";
        synopsis = "An orphan Eq instance for ErrorCall";
        description = "Prior to @base-4.7.0.0@ there was no @Eq@ instance for\n@ErrorCall@.  This package provides an orphan instance.";
        buildType = "Simple";
      };
      components = {
        errorcall-eq-instance = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.errorcall-eq-instance
              hsPkgs.QuickCheck
              hsPkgs.hspec
            ];
          };
        };
      };
    }