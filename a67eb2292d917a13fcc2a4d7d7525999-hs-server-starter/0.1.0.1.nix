{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      example = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hs-server-starter";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2017- hiratara";
        maintainer = "hiratara@cpan.org";
        author = "Masahiro Honma";
        homepage = "https://github.com/hiratara/hs-server-starter";
        url = "";
        synopsis = "Write a server supporting Server::Starter's protocol in Haskell";
        description = "Provides a utility to write server program which can be\ncalled via Perl's https://github.com/kazuho/p5-Server-Starter\nprogram using Haskell.\nThis module does not provide a Haskell implementation of\nstart_server, so you need to use the original Perl version\nor use a version ported to golang.";
        buildType = "Simple";
      };
      components = {
        hs-server-starter = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.network
          ];
        };
        exes = {
          server-starter-warp-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.hs-server-starter
              hsPkgs.http-types
              hsPkgs.warp
              hsPkgs.wai
              hsPkgs.network
            ];
          };
        };
        tests = {
          hs-server-starter-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hs-server-starter
              hsPkgs.network
              hsPkgs.temporary
              hsPkgs.unix
              hsPkgs.HUnit
            ];
          };
        };
      };
    }