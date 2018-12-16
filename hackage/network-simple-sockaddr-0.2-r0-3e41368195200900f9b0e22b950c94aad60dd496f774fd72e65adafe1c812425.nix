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
      specVersion = "1.10";
      identifier = {
        name = "network-simple-sockaddr";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "j@dannynavarro.net";
      author = "Danny Navarro";
      homepage = "https://github.com/jdnavarro/network-simple-sockaddr";
      url = "";
      synopsis = "network-simple for resolved addresses";
      description = "@<http://hackage.haskell.org/package/network-simple-0.3.0 network-simple>@\nworks by resolving @HostName@s. This packages offers a similar API but\nworking with unresolved addresses in the form of @SockAddr@. In addition to\n@IPv4@ addresses, @IPv6@ and @Unix Domain Sockets@ are also supported.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.transformers)
          (hsPkgs.network)
          (hsPkgs.exceptions)
        ];
      };
    };
  }