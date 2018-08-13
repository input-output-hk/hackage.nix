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
        name = "network-protocol-xmpp";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "";
      url = "";
      synopsis = "Client <-> Server communication over XMPP";
      description = "";
      buildType = "Simple";
    };
    components = {
      "network-protocol-xmpp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hxt)
          (hsPkgs.libxml-sax)
          (hsPkgs.hsgnutls)
          (hsPkgs.gsasl)
          (hsPkgs.network)
        ];
      };
    };
  }