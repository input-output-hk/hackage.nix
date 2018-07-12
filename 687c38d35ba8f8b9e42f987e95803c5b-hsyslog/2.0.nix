{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsyslog";
          version = "2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Peter Simons";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "Peter Simons <simons@cryp.to>";
        homepage = "http://github.com/peti/hsyslog";
        url = "";
        synopsis = "FFI interface to syslog(3) from POSIX.1-2001";
        description = "This library provides FFI bindings to syslog(3) from POSIX.1-2001.\nSee <http://www.opengroup.org/onlinepubs/009695399/basedefs/syslog.h.html> for\nfurther details.";
        buildType = "Simple";
      };
      components = {
        "hsyslog" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "self-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }