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
        name = "phoityne-vscode";
        version = "0.0.27.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016-2018 phoityne_hs";
      maintainer = "phoityne.hs@gmail.com";
      author = "phoityne_hs";
      homepage = "https://github.com/phoityne/phoityne-vscode";
      url = "";
      synopsis = "Haskell Debug Adapter for Visual Studio Code.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      exes = {
        "phoityne-vscode" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.MissingH)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.fsnotify)
            (hsPkgs.hslogger)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.resourcet)
            (hsPkgs.safe)
            (hsPkgs.safe-exceptions)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }