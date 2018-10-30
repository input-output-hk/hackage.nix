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
      specVersion = "2.0";
      identifier = {
        name = "network-dns";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2013, 2017 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/network-dns";
      url = "";
      synopsis = "Domain Name System data structures";
      description = "This package provides Domain Name System data structures and\n(de)serialization routines.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.type-hint)
          (hsPkgs.hashable)
          (hsPkgs.containers)
          (hsPkgs.data-serializer)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.text-latin1)
          (hsPkgs.text-printer)
          (hsPkgs.data-textual)
          (hsPkgs.parsers)
          (hsPkgs.network-ip)
        ];
      };
      exes = {
        "hs-network-dns-examples-resolver" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-textual)
            (hsPkgs.data-serializer)
            (hsPkgs.network-ip)
            (hsPkgs.network-dns)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.posix-socket);
        };
      };
    };
  }