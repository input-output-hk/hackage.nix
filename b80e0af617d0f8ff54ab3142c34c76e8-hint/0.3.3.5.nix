{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "hint";
          version = "0.3.3.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jcpetruzza@gmail.com";
        author = "Daniel Gorin";
        homepage = "http://darcsden.com/jcpetruzza/hint";
        url = "";
        synopsis = "Runtime Haskell interpreter (GHC API wrapper)";
        description = "This library defines an @Interpreter@ monad. It allows to load Haskell\nmodules, browse them, type-check and evaluate strings with Haskell\nexpressions and even coerce them into values. The library is\nthread-safe and type-safe (even the coercion of expressions to\nvalues).\nIt is, esentially, a huge subset of the GHC API wrapped in a simpler\nAPI. Works with GHC 6.10.x and 6.8.x\n(this version was not tested with GHC 6.6).";
        buildType = "Simple";
      };
      components = {
        "hint" = {
          depends  = ([
            hsPkgs.haskell-src
            hsPkgs.ghc
            hsPkgs.ghc-paths
            hsPkgs.mtl
            hsPkgs.filepath
            hsPkgs.utf8-string
            hsPkgs.extensible-exceptions
            hsPkgs.MonadCatchIO-mtl
          ] ++ (if compiler.isGhc && compiler.version.ge "6.8"
            then [
              hsPkgs.random
              hsPkgs.directory
            ] ++ (if compiler.isGhc && compiler.version.ge "6.10"
              then [
                hsPkgs.base
                hsPkgs.base
                hsPkgs.ghc-mtl
                hsPkgs.ghc-mtl
              ]
              else [
                hsPkgs.base
                hsPkgs.base
              ])
            else [
              hsPkgs.utf8-string
            ])) ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
      };
    }