{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      category = true;
      optimizeadvanced = true;
      buildprofilers = false;
      buildtests = false;
      buildexamples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "synthesizer-inference";
          version = "0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
        url = "";
        synopsis = "Audio signal processing with dynamic physical dimensions";
        description = "High-level functions which use physical units.\nWe try to abstract from the sample rate using various approaches.\nThe modules are a bit outdated however,\nand I think that the package @synthesizer-dimensional@\nprovides the better design.";
        buildType = "Simple";
      };
      components = {
        synthesizer-inference = {
          depends  = [
            hsPkgs.synthesizer-core
            hsPkgs.transformers
            hsPkgs.event-list
            hsPkgs.non-negative
            hsPkgs.UniqueLogicNP
            hsPkgs.numeric-prelude
            hsPkgs.utility-ht
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.random
            ]
            else [
              hsPkgs.base
              hsPkgs.special-functors
            ]);
        };
        exes = { alinea = {}; };
      };
    }