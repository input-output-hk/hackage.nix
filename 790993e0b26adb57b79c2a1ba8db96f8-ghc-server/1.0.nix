{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ghc-server";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "A server interface to GHC.";
        description = "A server interface to GHC.\nSupported major GHC versions: 7.4, 7.6, 7.8";
        buildType = "Simple";
      };
      components = {
        ghc-server = {
          depends  = pkgs.lib.optional (compiler.isGhc && false) hsPkgs.ghc ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "7.4") [
            hsPkgs.ghc
            hsPkgs.base
            hsPkgs.text
            hsPkgs.ghc-paths
            hsPkgs.atto-lisp
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.syb
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.unix
            hsPkgs.async
            hsPkgs.conduit
            hsPkgs.conduit-extra
          ];
        };
        exes = {
          ghc-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-server
              hsPkgs.network
            ];
          };
        };
      };
    }