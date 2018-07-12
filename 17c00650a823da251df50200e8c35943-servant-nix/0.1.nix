{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-nix";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Servant Contributors";
        maintainer = "haskell-servant-maintainers@googlegroups.com";
        author = "Servant Contributors";
        homepage = "http://haskell-servant.readthedocs.org/";
        url = "";
        synopsis = "Servant Nix content-type";
        description = "Servant Nix bindings.\n\nProvides @MineRender@ and @MimeUnrender@ instances.\nSo you can accept and return Nix expressions, with the help\nof the hnix library.";
        buildType = "Simple";
      };
      components = {
        "servant-nix" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.servant
            hsPkgs.text
            hsPkgs.http-media
            hsPkgs.hnix
          ];
        };
        tests = {
          "example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hnix
              hsPkgs.http-client
              hsPkgs.servant
              hsPkgs.servant-nix
              hsPkgs.servant-server
              hsPkgs.servant-client
              hsPkgs.wai
              hsPkgs.warp
            ];
          };
        };
      };
    }