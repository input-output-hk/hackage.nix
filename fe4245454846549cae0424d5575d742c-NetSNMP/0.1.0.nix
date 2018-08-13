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
      specVersion = "1.2";
      identifier = {
        name = "NetSNMP";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) John Dorsey 2009";
      maintainer = "John Dorsey <haskell@colquitt.org>";
      author = "John Dorsey <haskell@colquitt.org>";
      homepage = "";
      url = "";
      synopsis = "Bindings for net-snmp's C API for clients";
      description = "Network.Protocol.NetSNMP is a partial binding to the\nlibrary portion of the net-snmp package.  It uses the\n'single-session api', which is claimed to be\nthread-safe.  Not all operations are supported yet;\nplease contact the maintainer if you're in need of\nexpanded functionality, and especially if you would\nlike to contribute.";
      buildType = "Simple";
    };
    components = {
      "NetSNMP" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."netsnmp") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }