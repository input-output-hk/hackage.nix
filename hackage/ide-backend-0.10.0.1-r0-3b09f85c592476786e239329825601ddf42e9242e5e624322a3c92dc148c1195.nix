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
        name = "ide-backend";
        version = "0.10.0.1";
      };
      license = "MIT";
      copyright = "(c) 2015 FP Complete";
      maintainer = "Duncan Coutts <duncan@well-typed.com>";
      author = "Duncan Coutts, Mikolaj Konarski, Edsko de Vries";
      homepage = "";
      url = "";
      synopsis = "An IDE backend library";
      description = "See README.md for more details";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filemanip)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.async)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.binary)
          (hsPkgs.data-accessor)
          (hsPkgs.data-accessor-mtl)
          (hsPkgs.pureMD5)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.attoparsec)
          (hsPkgs.utf8-string)
          (hsPkgs.ide-backend-common)
          (hsPkgs.template-haskell)
          (hsPkgs.Cabal-ide-backend)
          (hsPkgs.ghc-prim)
          (hsPkgs.pretty-show)
          (hsPkgs.network)
        ] ++ (if system.isWindows
          then [ (hsPkgs.unix-compat) ]
          else [ (hsPkgs.unix) ]);
      };
      exes = {
        "ide-backend-exe-cabal" = {
          depends  = [
            (hsPkgs.ide-backend)
            (hsPkgs.ide-backend-common)
            (hsPkgs.base)
            (hsPkgs.filemanip)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.async)
            (hsPkgs.aeson)
            (hsPkgs.executable-path)
            (hsPkgs.temporary)
            (hsPkgs.bytestring-trie)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.fingertree)
            (hsPkgs.binary)
            (hsPkgs.data-accessor)
            (hsPkgs.data-accessor-mtl)
            (hsPkgs.crypto-api)
            (hsPkgs.pureMD5)
            (hsPkgs.tagged)
            (hsPkgs.transformers)
            (hsPkgs.time)
            (hsPkgs.attoparsec)
            (hsPkgs.template-haskell)
            (hsPkgs.Cabal-ide-backend)
            (hsPkgs.ghc-prim)
            (hsPkgs.pretty-show)
            (hsPkgs.network)
            (hsPkgs.unix-compat)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
      };
      tests = {
        "TestSuite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ide-backend)
            (hsPkgs.ide-backend-common)
            (hsPkgs.tasty)
            (hsPkgs.HUnit)
            (hsPkgs.tagged)
            (hsPkgs.utf8-string)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.regex-compat)
            (hsPkgs.filepath)
            (hsPkgs.filemanip)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.stm)
            (hsPkgs.random)
            (hsPkgs.Cabal-ide-backend)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.parallel)
            (hsPkgs.monads-tf)
          ] ++ (if system.isWindows
            then [ (hsPkgs.unix-compat) ]
            else [ (hsPkgs.unix) ]);
        };
        "rpc-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filemanip)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.bytestring)
            (hsPkgs.async)
            (hsPkgs.aeson)
            (hsPkgs.temporary)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.executable-path)
            (hsPkgs.binary)
            (hsPkgs.ide-backend)
            (hsPkgs.ide-backend-common)
            (hsPkgs.network)
            (hsPkgs.template-haskell)
          ] ++ (if system.isWindows
            then [ (hsPkgs.unix-compat) ]
            else [ (hsPkgs.unix) ]);
        };
      };
    };
  }