{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ide-backend-server";
        version = "0.9.0";
      };
      license = "MIT";
      copyright = "(c) 2015 FP Complete";
      maintainer = "Duncan Coutts <duncan@well-typed.com>";
      author = "Duncan Coutts, Mikolaj Konarski, Edsko de Vries";
      homepage = "";
      url = "";
      synopsis = "An IDE backend server";
      description = "Server executable used internally by the ide-backend library.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ide-backend-server" = {
          depends = (([
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.data-accessor)
            (hsPkgs.data-accessor-mtl)
            (hsPkgs.async)
            (hsPkgs.unix)
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
            (hsPkgs.ide-backend-common)
          ] ++ pkgs.lib.optionals (compiler.isGhc && false) [
            (hsPkgs.old-time)
            (hsPkgs.haddock)
            (hsPkgs.Cabal)
          ]) ++ pkgs.lib.optionals (compiler.isGhc && false) [
            (hsPkgs.time)
            (hsPkgs.haddock-api)
            (hsPkgs.Cabal)
          ]) ++ pkgs.lib.optionals (compiler.isGhc && false) [
            (hsPkgs.time)
            (hsPkgs.haddock-api)
            (hsPkgs.Cabal)
          ];
        };
      };
    };
  }