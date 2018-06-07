{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hprotoc-fork";
          version = "2.0.16";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2012 Christopher Edward Kuklewicz";
        maintainer = "Stefan Wehr <wehr@cp-med.com>";
        author = "Christopher Edward Kuklewicz";
        homepage = "http://darcs.factisresearch.com/pub/protocol-buffers-fork/";
        url = "http://hackage.haskell.org/package/hprotoc-fork";
        synopsis = "Parse Google Protocol Buffer specifications";
        description = "Parse language defined at <http://code.google.com/apis/protocolbuffers/docs/proto.html> and general haskell code to implement messages. This is a fork of the hprotoc library at http://hackage.haskell.org/package/hprotoc";
        buildType = "Simple";
      };
      components = {
        hprotoc-fork = {
          depends  = [
            hsPkgs.protocol-buffers-fork
            hsPkgs.protocol-buffers-descriptor-fork
            hsPkgs.array
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.haskell-src-exts
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.utf8-string
          ] ++ [ hsPkgs.base ];
          build-tools = [
            hsPkgs.buildPackages.alex
          ];
        };
        exes = {
          hprotoc = {
            depends  = [
              hsPkgs.protocol-buffers-fork
              hsPkgs.protocol-buffers-descriptor-fork
              hsPkgs.array
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.haskell-src-exts
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.utf8-string
            ] ++ [ hsPkgs.base ];
            build-tools = [
              hsPkgs.buildPackages.alex
            ];
          };
        };
      };
    }