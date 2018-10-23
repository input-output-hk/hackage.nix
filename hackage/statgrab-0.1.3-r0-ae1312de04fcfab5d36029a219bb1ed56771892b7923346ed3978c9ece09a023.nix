{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "statgrab";
        version = "0.1.3";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "http://github.com/brendanhay/statgrab";
      url = "";
      synopsis = "Collect system level metrics and statistics";
      description = "Provides an interface to the cross platform system statistics C library, 'libstatgrab'.\n\nIt supports a wide range of system statistics including CPU usage, memory utilisation,\ndisk usage, process counts, network traffic, disk I/O, and more.\n\nThe current list of supported and tested platforms for the underlying library\ninclude OSX, FreeBSD, Linux, NetBSD, OpenBSD, Solaris, DragonFly BSD, HP-UX and AIX.\n\n/Requirements:/\n\n* 'libstatgrab' @0.9.0@ must be installed on the target system.\n\n/Note:/ Currently these bindings have only been developed and tested on OSX and Linux.";
      buildType = "Simple";
    };
    components = {
      "statgrab" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
        libs = [ (pkgs."statgrab") ];
      };
    };
  }