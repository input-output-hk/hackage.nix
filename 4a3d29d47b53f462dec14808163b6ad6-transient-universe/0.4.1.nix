{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "transient-universe";
          version = "0.4.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "agocorona@gmail.com";
        author = "Alberto G. Corona";
        homepage = "http://www.fpcomplete.com/user/agocorona";
        url = "";
        synopsis = "Remote execution and map-reduce: distributed computing for Transient";
        description = "See <http://github.com/agocorona/transient>.";
        buildType = "Simple";
      };
      components = {
        transient-universe = {
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
          ] ++ (if compiler.isGhcjs
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
          monitorService = {
            depends  = [
              hsPkgs.base
            ] ++ pkgs.lib.optionals (!compiler.isGhcjs) [
              hsPkgs.transformers
              hsPkgs.transient
              hsPkgs.transient-universe
            ];
          };
        };
        tests = {
          test-transient = {
            depends  = [
              hsPkgs.base
            ] ++ pkgs.lib.optionals (!compiler.isGhcjs) [
              hsPkgs.mtl
              hsPkgs.transient
              hsPkgs.random
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.stm
              hsPkgs.HTTP
              hsPkgs.network
              hsPkgs.transformers
              hsPkgs.process
              hsPkgs.network
              hsPkgs.network-info
              hsPkgs.bytestring
              hsPkgs.time
              hsPkgs.vector
              hsPkgs.TCache
              hsPkgs.websockets
              hsPkgs.network-uri
              hsPkgs.case-insensitive
              hsPkgs.hashable
            ];
          };
        };
      };
    }