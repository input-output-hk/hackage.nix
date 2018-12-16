{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      buildanatool = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "concraft";
        version = "0.7.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Jakub Waszczuk, 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "http://zil.ipipan.waw.pl/Concraft";
      url = "";
      synopsis = "Morphological disambiguation based on constrained CRFs";
      description = "A morphological disambiguation library based on\nconstrained conditional random fields.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.text-binary)
          (hsPkgs.vector)
          (hsPkgs.vector-binary)
          (hsPkgs.crf-chain1-constrained)
          (hsPkgs.monad-ox)
          (hsPkgs.sgd)
          (hsPkgs.tagset-positional)
          (hsPkgs.crf-chain2-tiers)
          (hsPkgs.monad-codec)
          (hsPkgs.data-lens)
          (hsPkgs.transformers)
          (hsPkgs.comonad-transformers)
          (hsPkgs.temporary)
          (hsPkgs.aeson)
          (hsPkgs.zlib)
        ];
      };
      exes = {
        "concraft-analyse-model" = {
          depends = pkgs.lib.optionals (flags.buildanatool) [
            (hsPkgs.cmdargs)
            (hsPkgs.logfloat)
            (hsPkgs.Chart)
            (hsPkgs.data-accessor)
            (hsPkgs.colour)
          ];
        };
      };
    };
  }