{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Holumbus-Distribution";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2008 Stefan Schmidt, Uwe Schmidt";
        maintainer = "Stefan Schmidt <sts@holumbus.org>";
        author = "Stefan Schmidt, Uwe Schmidt";
        homepage = "http://holumbus.fh-wedel.de";
        url = "";
        synopsis = "intra- and inter-program communication";
        description = "Holumbus-Distribution offers Erlang-Style mailboxes for an easy implementation\nof distributed systems in Haskell. The mailboxes can be used to exchange messages\nbetween threads inside a single program or between programs over the network.";
        buildType = "Simple";
      };
      components = {
        Holumbus-Distribution = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.editline
            hsPkgs.haskell98
            hsPkgs.hslogger
            hsPkgs.hxt
            hsPkgs.network
            hsPkgs.time
            hsPkgs.unix
          ];
        };
        exes = { PortRegistry = {}; };
      };
    }