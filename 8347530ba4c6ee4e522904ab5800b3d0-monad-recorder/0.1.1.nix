{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-recorder";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "2017 Harendra Kumar";
        maintainer = "harendra.kumar@gmail.com";
        author = "Harendra Kumar";
        homepage = "http://github.com/harendra-kumar/monad-recorder";
        url = "";
        synopsis = "Record and replay the results of monadic actions";
        description = "A monad transformer and class that allows recording\nthe results of monadic actions and replay them later.\nInspired by the logging implementation in the transient\npackage by Alberto G. Corona. Related packages:\n\n* https://hackage.haskell.org/package/transient\n* https://hackage.haskell.org/package/Workflow";
        buildType = "Simple";
      };
      components = {
        monad-recorder = {
          depends  = [
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.transformers-base
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.monad-recorder
            ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") hsPkgs.transformers;
          };
        };
      };
    }