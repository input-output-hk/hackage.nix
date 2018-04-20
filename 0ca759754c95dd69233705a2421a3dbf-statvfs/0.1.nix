{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "statvfs";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "gergely@risko.hu";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Get unix filesystem statistics with statfs, statvfs";
        description = "C FFI wrapper for POSIX statvfs and fstatvfs calls.";
        buildType = "Configure";
      };
      components = {
        statvfs = {
          depends  = [ hsPkgs.base ];
        };
      };
    }