{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "savage";
          version = "1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Daniel Cartwright <dcartwright@layer3com.com>";
        author = "Daniel Cartwright";
        homepage = "https://github.com/chessai/savage";
        url = "";
        synopsis = "re-export of the random generators from Hedgehog";
        description = "re-export of the random generators from Hedgehog:\n<https://github.com/hedgehogqa>";
        buildType = "Simple";
      };
      components = {
        savage = {
          depends  = ([
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.mmorph
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.primitive
            hsPkgs.random
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") hsPkgs.semigroups) ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
      };
    }