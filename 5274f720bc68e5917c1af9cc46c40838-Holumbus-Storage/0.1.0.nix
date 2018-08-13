{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Holumbus-Storage";
        version = "0.1.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2010 Stefan Schmidt, Uwe Schmidt, Sebastian Reese";
      maintainer = "Stefan Schmidt <sts@holumbus.org>";
      author = "Uwe Schmidt, Stefan Schmidt";
      homepage = "http://holumbus.fh-wedel.de";
      url = "";
      synopsis = "a distributed storage system";
      description = "This package contains a library for building distributed storage systems.";
      buildType = "Simple";
    };
    components = {
      "Holumbus-Storage" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.haskell98)
          (hsPkgs.hslogger)
          (hsPkgs.hxt)
          (hsPkgs.network)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.Holumbus-Distribution)
          (hsPkgs.random)
        ];
      };
      exes = {
        "StorageControllerDaemon" = {};
        "StorageNodeDaemon" = {};
      };
    };
  }