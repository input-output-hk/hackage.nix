{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      optimizeadvanced = true;
      buildexamples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "synthesizer-dimensional";
          version = "0.6.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
        url = "";
        synopsis = "Audio signal processing with static physical dimensions";
        description = "High-level functions that use physical units and\nabstract from the sample rate in statically type safe way.";
        buildType = "Simple";
      };
      components = {
        synthesizer-dimensional = {
          depends  = [
            hsPkgs.synthesizer-core
            hsPkgs.transformers
            hsPkgs.event-list
            hsPkgs.non-negative
            hsPkgs.numeric-prelude
            hsPkgs.storable-record
            hsPkgs.sox
            hsPkgs.storablevector
            hsPkgs.bytestring
            hsPkgs.random
            hsPkgs.utility-ht
            hsPkgs.base
          ];
        };
        exes = {
          rain = {};
          demonstration = {
            depends  = pkgs.lib.optionals _flags.buildexamples [
              hsPkgs.explicit-exception
              hsPkgs.old-time
            ];
          };
          traumzauberbaum = {};
        };
      };
    }