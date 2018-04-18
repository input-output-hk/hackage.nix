{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsyslog";
          version = "3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2004-2016 by Peter Simons";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "Peter Simons, John Lato, Jonathan Childress";
        homepage = "http://github.com/peti/hsyslog";
        url = "";
        synopsis = "FFI interface to syslog(3) from POSIX.1-2001";
        description = "This version of the library is deprecated because it contains a severe bug in the way logging priorities and facilities are handled.";
        buildType = "Simple";
      };
      components = {
        hsyslog = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hsyslog
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }