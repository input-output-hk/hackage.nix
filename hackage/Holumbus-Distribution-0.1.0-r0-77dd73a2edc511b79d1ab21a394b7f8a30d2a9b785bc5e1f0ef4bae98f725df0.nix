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
      specVersion = "1.6";
      identifier = {
        name = "Holumbus-Distribution";
        version = "0.1.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2010 Stefan Schmidt, Uwe Schmidt, Sebastian Reese";
      maintainer = "Stefan Schmidt <sts@holumbus.org>";
      author = "Stefan Schmidt, Uwe Schmidt";
      homepage = "http://holumbus.fh-wedel.de";
      url = "";
      synopsis = "intra- and inter-program communication";
      description = "Holumbus-Distribution offers distributed data structures like Chan, MVar or functions.\nThese datatype can be used between different programs on different computers to exchange\ndata. With the help of this library it is possible to build Erlang-Style mailboxes for an\neasy implementation of distributed systems in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.haskell98)
          (hsPkgs.hslogger)
          (hsPkgs.hxt)
          (hsPkgs.network)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.random)
          (hsPkgs.stm)
          (hsPkgs.parallel)
          (hsPkgs.array)
          (hsPkgs.readline)
        ];
      };
      exes = {
        "PortRegistry" = {};
        "PortRegistryDaemon" = {};
      };
    };
  }