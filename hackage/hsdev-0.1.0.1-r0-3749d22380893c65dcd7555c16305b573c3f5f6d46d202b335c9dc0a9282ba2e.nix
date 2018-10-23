{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hsdev";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voidex@live.com";
      author = "Alexandr `Voidex` Ruchkin";
      homepage = "https://github.com/mvoidex/hsdev";
      url = "";
      synopsis = "Haskell development library and tool with support of autocompletion, symbol info, go to declaration, find references etc.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hsdev" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.ghc)
          (hsPkgs.ghc-mod)
          (hsPkgs.ghc-paths)
          (hsPkgs.haddock)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.hdocs)
          (hsPkgs.HTTP)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.process)
          (hsPkgs.regexpr)
          (hsPkgs.time)
          (hsPkgs.attoparsec)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
        ];
      };
      exes = {
        "hsdev" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.hsdev)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.monad-loops)
            (hsPkgs.MonadCatchIO-transformers)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.process)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32);
        };
        "hsinspect" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hsdev)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
        "hsclearimports" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hsdev)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.directory)
            (hsPkgs.ghc)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
        "hscabal" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hsdev)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
        "hshayoo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hsdev)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }