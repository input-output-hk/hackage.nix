{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      optimizeadvanced = true;
      buildexamples = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "synthesizer-dimensional";
        version = "0.4";
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
      "synthesizer-dimensional" = {
        depends  = [
          (hsPkgs.synthesizer-core)
          (hsPkgs.transformers)
          (hsPkgs.event-list)
          (hsPkgs.non-negative)
          (hsPkgs.numeric-prelude)
          (hsPkgs.utility-ht)
          (hsPkgs.storable-record)
          (hsPkgs.sox)
          (hsPkgs.storablevector)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.old-time)
          (hsPkgs.process)
        ];
      };
      exes = {
        "rain" = {};
        "demonstration" = {};
        "traumzauberbaum" = {};
      };
    };
  }