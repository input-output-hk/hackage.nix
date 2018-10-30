{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      optimizeadvanced = true;
      buildexamples = false;
    };
    package = {
      specVersion = "1.14";
      identifier = {
        name = "synthesizer-dimensional";
        version = "0.7.0.1";
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
      "library" = {
        depends  = [
          (hsPkgs.synthesizer-core)
          (hsPkgs.transformers)
          (hsPkgs.event-list)
          (hsPkgs.non-negative)
          (hsPkgs.numeric-prelude)
          (hsPkgs.storable-record)
          (hsPkgs.sox)
          (hsPkgs.storablevector)
          (hsPkgs.bytestring)
          (hsPkgs.random)
          (hsPkgs.utility-ht)
          (hsPkgs.base)
        ];
      };
      exes = {
        "rain" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.synthesizer-dimensional)
            (hsPkgs.synthesizer-core)
            (hsPkgs.numeric-prelude)
            (hsPkgs.event-list)
            (hsPkgs.utility-ht)
            (hsPkgs.random)
            (hsPkgs.base)
          ];
        };
        "demonstration" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.explicit-exception)
            (hsPkgs.old-time)
            (hsPkgs.synthesizer-dimensional)
            (hsPkgs.synthesizer-core)
            (hsPkgs.sox)
            (hsPkgs.storablevector)
            (hsPkgs.storable-record)
            (hsPkgs.numeric-prelude)
            (hsPkgs.event-list)
            (hsPkgs.non-negative)
            (hsPkgs.transformers)
            (hsPkgs.utility-ht)
            (hsPkgs.random)
            (hsPkgs.base)
          ];
        };
        "traumzauberbaum" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.synthesizer-dimensional)
            (hsPkgs.synthesizer-core)
            (hsPkgs.numeric-prelude)
            (hsPkgs.utility-ht)
            (hsPkgs.storablevector)
            (hsPkgs.base)
          ];
        };
      };
    };
  }