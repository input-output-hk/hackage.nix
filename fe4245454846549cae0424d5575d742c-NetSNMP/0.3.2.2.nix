{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "NetSNMP";
          version = "0.3.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Pavlo Kerestey <pavlo@kerestey.net>";
        author = "Pavlo Kerestey and Humane Software for Global Access Internet Services GmbH";
        homepage = "https://github.com/ptek/netsnmp";
        url = "";
        synopsis = "Bindings for net-snmp's C API for clients";
        description = "Network.Protocol.NetSNMP is a partial binding to the\nlibrary portion of the net-snmp package.  It uses the\n'single-session api', which is claimed to be\nthread-safe.  Not all operations are supported yet;\nplease contact the maintainer if you're in need of\nexpanded functionality, and especially if you would\nlike to contribute.";
        buildType = "Simple";
      };
      components = {
        NetSNMP = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = [ pkgs.netsnmp ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.NetSNMP
              hsPkgs.process
            ];
          };
        };
      };
    }