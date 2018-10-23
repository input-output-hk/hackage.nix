{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      portable = false;
      portable-compiler = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haste-compiler";
        version = "0.2.9";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad <anton@ekblad.cc>";
      homepage = "http://github.com/valderman/haste-compiler";
      url = "";
      synopsis = "Haskell To ECMAScript compiler";
      description = "This package provides a featureful compiler from Haskell to\nJavascript. It generates small, fast code, makes use of\nstandard Haskell libraries, integrates with Cabal, supports\nmost GHC extensions and works on Windows, Linux and OSX.\nBug reports are highly appreciated.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "haste-boot" = {
          depends  = [
            (hsPkgs.ghc)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.tar)
            (hsPkgs.bzlib)
            (hsPkgs.zip-archive)
            (hsPkgs.filepath)
            (hsPkgs.temporary)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.executable-path)
          ];
        };
        "hastec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.ghc)
            (hsPkgs.mtl)
            (hsPkgs.binary)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.bytestring)
            (hsPkgs.blaze-builder)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.array)
            (hsPkgs.ghc-paths)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.system-fileio)
            (hsPkgs.executable-path)
          ];
        };
        "haste-inst" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.executable-path)
          ];
        };
        "haste-pkg" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.executable-path)
          ];
        };
        "haste-install-his" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.executable-path)
          ];
        };
        "haste-copy-pkg" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.executable-path)
          ];
        };
      };
    };
  }