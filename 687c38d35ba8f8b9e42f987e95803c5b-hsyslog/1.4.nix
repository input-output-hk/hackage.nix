{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hsyslog";
          version = "1.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2004-2010 Peter Simons";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "Peter Simons <simons@cryp.to>";
        homepage = "http://gitorious.org/hsyslog";
        url = "";
        synopsis = "FFI interface to syslog(3) from POSIX.1-2001.";
        description = "This library provides FFI bindings to syslog(3) from POSIX.1-2001.\nSee <http://www.opengroup.org/onlinepubs/009695399/basedefs/syslog.h.html> for\nfurther details.";
        buildType = "Simple";
      };
      components = {
        "hsyslog" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }