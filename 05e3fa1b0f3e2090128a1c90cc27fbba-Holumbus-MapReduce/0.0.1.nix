{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Holumbus-MapReduce";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2008 Uwe Schmidt, Stefan Schmidt";
        maintainer = "Stefan Schmidt <sts@holumbus.org>";
        author = "Uwe Schmidt, Stefan Schmidt";
        homepage = "http://holumbus.fh-wedel.de";
        url = "";
        synopsis = "a distributed MapReduce framework";
        description = "This package contains a library and tools for the\ncreation of distributed MapReduce applications.";
        buildType = "Simple";
      };
      components = {
        "Holumbus-MapReduce" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.haskell98
            hsPkgs.hslogger
            hsPkgs.hxt
            hsPkgs.network
            hsPkgs.time
            hsPkgs.unix
            hsPkgs.Holumbus-Distribution
            hsPkgs.Holumbus-Storage
          ];
        };
        exes = { "Master" = {}; };
      };
    }