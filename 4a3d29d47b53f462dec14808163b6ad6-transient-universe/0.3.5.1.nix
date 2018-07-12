{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "transient-universe";
          version = "0.3.5.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto G. Corona";
        homepage = "http://www.fpcomplete.com/user/agocorona";
        url = "";
        synopsis = "Remote execution and map-reduce: distributed computing for Transient";
        description = "See <http://github.com/transient-haskell/transient>.";
        buildType = "Simple";
      };
      components = {
        "transient-universe" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.random
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transient
          ] ++ (if compiler.isGhcjs && compiler.version.ge "0.1"
            then [
              hsPkgs.ghcjs-base
              hsPkgs.ghcjs-prim
            ]
            else [
              hsPkgs.HTTP
              hsPkgs.TCache
              hsPkgs.case-insensitive
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hashable
              hsPkgs.iproute
              hsPkgs.network
              hsPkgs.network-info
              hsPkgs.network-uri
              hsPkgs.vector
              hsPkgs.websockets
            ]);
        };
        exes = {
          "monitorService" = {
            depends  = [
              hsPkgs.base
            ] ++ pkgs.lib.optionals (!(compiler.isGhcjs && compiler.version.ge "0.1")) [
              hsPkgs.transformers
              hsPkgs.transient
              hsPkgs.transient-universe
            ];
          };
        };
        tests = {
          "test-transient" = {
            depends  = [
              hsPkgs.base
            ] ++ pkgs.lib.optionals (!(compiler.isGhcjs && compiler.version.ge "0.1")) [
              hsPkgs.HTTP
              hsPkgs.TCache
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hashable
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.network
              hsPkgs.network-info
              hsPkgs.network-uri
              hsPkgs.process
              hsPkgs.random
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.transient
              hsPkgs.vector
              hsPkgs.websockets
            ];
          };
        };
      };
    }