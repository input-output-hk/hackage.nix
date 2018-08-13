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
      specVersion = "0";
      identifier = {
        name = "network-connection";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Adam Langley <agl@imperialviolet.org>";
      homepage = "http://darcs.imperialviolet.org/network-connection";
      url = "";
      synopsis = "A wrapper around a generic stream-like connection";
      description = "Many uses of Sockets needs a number of common functions, like a write queue, pushback etc. This provides such and allows code to be written generically for any type of connection, be a raw socket or an SSL connection.";
      buildType = "Simple";
    };
    components = {
      "network-connection" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.network-bytestring)
          (hsPkgs.network)
          (hsPkgs.stm)
        ];
      };
    };
  }