{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "snaplet-mongoDB";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ciemniewski.kamil@gmail.com";
        author = "Kamil Ciemniewski";
        homepage = "";
        url = "";
        synopsis = "Snap Framework MongoDB support as Snaplet";
        description = "";
        buildType = "Simple";
      };
      components = {
        snaplet-mongoDB = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bson
            hsPkgs.compact-string-fix
            hsPkgs.containers
            hsPkgs.mongoDB
            hsPkgs.mtl
            hsPkgs.regular
            hsPkgs.safe
            hsPkgs.snap
            hsPkgs.snap-core
            hsPkgs.text
            hsPkgs.time
            hsPkgs.parsec
            hsPkgs.haskell-src-exts
            hsPkgs.template-haskell
            hsPkgs.MonadCatchIO-transformers
          ];
        };
      };
    }