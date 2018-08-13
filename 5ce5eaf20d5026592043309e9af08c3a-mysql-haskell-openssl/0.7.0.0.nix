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
      specVersion = "1.10";
      identifier = {
        name = "mysql-haskell-openssl";
        version = "0.7.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Winterland";
      maintainer = "winterland1989@gmail.com";
      author = "winterland1989";
      homepage = "https://github.com/winterland1989/mysql-haskell";
      url = "";
      synopsis = "TLS support for mysql-haskell package using openssl";
      description = "TLS support for mysql-haskell package using openssl";
      buildType = "Simple";
    };
    components = {
      "mysql-haskell-openssl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.io-streams)
          (hsPkgs.tcp-streams)
          (hsPkgs.tcp-streams-openssl)
          (hsPkgs.wire-streams)
          (hsPkgs.mysql-haskell)
          (hsPkgs.HsOpenSSL)
        ];
      };
    };
  }