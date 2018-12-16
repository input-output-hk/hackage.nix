{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      docs = true;
      hlint = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hsdev";
        version = "0.3.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voidex@live.com";
      author = "Alexandr `Voidex` Ruchkin";
      homepage = "https://github.com/mvoidex/hsdev";
      url = "";
      synopsis = "Haskell development library";
      description = "Haskell development library and tool with support of autocompletion, symbol info, go to declaration, find references, hayoo search etc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (((((([
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.array)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cpphs)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.direct-sqlite)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.fsnotify)
          (hsPkgs.ghc-boot)
          (hsPkgs.ghc-paths)
          (hsPkgs.haskell-names)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.hformat)
          (hsPkgs.hlint)
          (hsPkgs.lens)
          (hsPkgs.lifted-base)
          (hsPkgs.mmorph)
          (hsPkgs.monad-control)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.regex-pcre-builtin)
          (hsPkgs.scientific)
          (hsPkgs.simple-log)
          (hsPkgs.sqlite-simple)
          (hsPkgs.stm)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.text-region)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.traverse-with-class)
          (hsPkgs.uniplate)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [
            (hsPkgs.unix)
          ])) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "8.6" && (compiler.isGhc && compiler.version.lt "8.7")) [
          (hsPkgs.ghc)
          (hsPkgs.Cabal)
        ]) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "8.4" && (compiler.isGhc && compiler.version.lt "8.5")) [
          (hsPkgs.ghc)
          (hsPkgs.Cabal)
        ]) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "8.2" && (compiler.isGhc && compiler.version.lt "8.3")) [
          (hsPkgs.ghc)
          (hsPkgs.Cabal)
        ]) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "8.0" && (compiler.isGhc && compiler.version.lt "8.2")) [
          (hsPkgs.ghc)
          (hsPkgs.Cabal)
        ]) ++ pkgs.lib.optionals (flags.docs) [
          (hsPkgs.hdocs)
          (hsPkgs.haddock-api)
          (hsPkgs.haddock-library)
        ]) ++ pkgs.lib.optional (flags.hlint) (hsPkgs.hlint);
      };
      exes = {
        "hsdev" = {
          depends = [
            (hsPkgs.hsdev)
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.monad-loops)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.hsdev)
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.lens-aeson)
            (hsPkgs.async)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hformat)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.text)
          ];
        };
      };
    };
  }