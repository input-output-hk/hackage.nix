{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
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
      description = "This library provides FFI bindings to syslog(3) from POSIX.1-2001.\nSee <http://www.opengroup.org/onlinepubs/009695399/basedefs/syslog.h.html> for\nfurther details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hsyslog)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }