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
      specVersion = "0";
      identifier = {
        name = "hsyslog";
        version = "1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "http://cryp.to/hsyslog/";
      url = "";
      synopsis = "FFI interface to syslog(3) from POSIX.1-2001.";
      description = "FFI interface to syslog(3) from POSIX.1-2001.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }