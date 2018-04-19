{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mysql-haskell-openssl";
          version = "0.8.3.0";
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
        mysql-haskell-openssl = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.tcp-streams
            hsPkgs.tcp-streams-openssl
            hsPkgs.wire-streams
            hsPkgs.mysql-haskell
            hsPkgs.HsOpenSSL
          ];
        };
      };
    }