{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "montage";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dev@bu.mp";
        author = "Bump Technologies, Inc";
        homepage = "http://github.com/bumptech/montage";
        url = "";
        synopsis = "Riak Resolution Proxy";
        description = "";
        buildType = "Simple";
      };
      components = {
        montage = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.containers
            hsPkgs.system-uuid
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.ListLike
            hsPkgs.stm
            hsPkgs.riak-bump
            hsPkgs.pool-conduit
            hsPkgs.unordered-containers
            hsPkgs.zeromq-haskell
            hsPkgs.protocol-buffers
            hsPkgs.protocol-buffers-descriptor
            hsPkgs.stats-web
            hsPkgs.safe
          ];
        };
      };
    }