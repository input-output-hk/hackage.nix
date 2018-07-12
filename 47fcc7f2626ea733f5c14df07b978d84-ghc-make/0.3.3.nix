{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "ghc-make";
          version = "0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "Neil Mitchell 2013-2017";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "https://github.com/ndmitchell/ghc-make#readme";
        url = "";
        synopsis = "Accelerated version of ghc --make";
        description = "The @ghc-make@ program can be used as a drop-in replacement for @ghc@. This program\ntargets two use cases:\n\n* If a flag such as @-j4@ is passed, the modules will be compiled in parallel.\nIf the available parallelism is greater than a factor of 3, the build will probably run faster.\n\n* If there is no work to do (i.e. the compiled files are up-to-date), the build will run faster,\nsometimes significantly so.\n\nSee the readme for full details: <https://github.com/ndmitchell/ghc-make#readme>.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "ghc-make" = {
            depends  = [
              hsPkgs.base
              hsPkgs.shake
              hsPkgs.unordered-containers
              hsPkgs.process
            ];
          };
        };
      };
    }