{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "haskell-debug-adapter"; version = "0.0.31.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 phoityne_hs";
      maintainer = "phoityne.hs@gmail.com";
      author = "phoityne_hs";
      homepage = "https://github.com/phoityne/haskell-debug-adapter/";
      url = "";
      synopsis = "Haskell Debug Adapter.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.Cabal)
          (hsPkgs.MissingH)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.clock)
          (hsPkgs.cmdargs)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.fsnotify)
          (hsPkgs.haskell-dap)
          (hsPkgs.hslogger)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.safe-exceptions)
          (hsPkgs.text)
          ];
        };
      exes = {
        "haskell-debug-adapter" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.MissingH)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.clock)
            (hsPkgs.cmdargs)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.fsnotify)
            (hsPkgs.haskell-dap)
            (hsPkgs.haskell-debug-adapter)
            (hsPkgs.hslogger)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.resourcet)
            (hsPkgs.safe-exceptions)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "haskell-debug-adapter-test" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.MissingH)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.clock)
            (hsPkgs.cmdargs)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.fsnotify)
            (hsPkgs.haskell-dap)
            (hsPkgs.haskell-debug-adapter)
            (hsPkgs.hslogger)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.resourcet)
            (hsPkgs.safe-exceptions)
            (hsPkgs.text)
            ];
          };
        };
      };
    }