{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wires";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2016 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <esz@posteo.de>";
      author = "Ertugrul Söylemez <esz@posteo.de>";
      homepage = "https://github.com/esoeylemez/wires";
      url = "";
      synopsis = "Functional reactive programming library";
      description = "Functional reactive programming library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.profunctors)
          (hsPkgs.semigroupoids)
          (hsPkgs.these)
        ];
      };
      exes = {
        "wires-ping-pong" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.clock)
            (hsPkgs.containers)
            (hsPkgs.profunctors)
            (hsPkgs.wires)
          ];
        };
      };
    };
  }