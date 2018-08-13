{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      pty-support = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ide-backend-server";
        version = "0.10.0.2";
      };
      license = "MIT";
      copyright = "(c) 2015 FP Complete";
      maintainer = "Duncan Coutts <duncan@well-typed.com>";
      author = "Duncan Coutts, Mikolaj Konarski, Edsko de Vries";
      homepage = "";
      url = "";
      synopsis = "An IDE backend server";
      description = "Server executable used internally by the ide-backend library.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "ide-backend-server" = {
          depends  = (((([
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.data-accessor)
            (hsPkgs.data-accessor-mtl)
            (hsPkgs.async)
            (hsPkgs.text)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.unordered-containers)
            (hsPkgs.filemanip)
            (hsPkgs.array)
            (hsPkgs.temporary)
            (hsPkgs.tar)
            (hsPkgs.zlib)
            (hsPkgs.file-embed)
            (hsPkgs.ide-backend-common)
            (hsPkgs.network)
          ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.unix-compat)) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optionals (compiler.isGhc && false) [
            (hsPkgs.old-time)
            (hsPkgs.haddock)
            (hsPkgs.Cabal)
          ]) ++ pkgs.lib.optionals (compiler.isGhc && false) [
            (hsPkgs.time)
            (hsPkgs.haddock-api)
            (hsPkgs.Cabal)
          ]) ++ pkgs.lib.optionals (compiler.isGhc && false || compiler.isGhc && false) [
            (hsPkgs.time)
            (hsPkgs.haddock-api)
            (hsPkgs.Cabal)
          ];
        };
      };
    };
  }