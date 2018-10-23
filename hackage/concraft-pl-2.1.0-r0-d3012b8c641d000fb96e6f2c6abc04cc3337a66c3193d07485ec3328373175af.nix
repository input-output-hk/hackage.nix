{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "concraft-pl";
        version = "2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012-2018 Jakub Waszczuk, IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "http://zil.ipipan.waw.pl/Concraft";
      url = "";
      synopsis = "Morphological tagger for Polish";
      description = "A morphological tagger for Polish based on the concraft library.";
      buildType = "Simple";
    };
    components = {
      "concraft-pl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.concraft)
          (hsPkgs.pedestrian-dag)
          (hsPkgs.crf-chain1-constrained)
          (hsPkgs.crf-chain2-tiers)
          (hsPkgs.tagset-positional)
          (hsPkgs.sgd)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.binary)
          (hsPkgs.process)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.network)
          (hsPkgs.lazy-io)
          (hsPkgs.split)
          (hsPkgs.scotty)
          (hsPkgs.http-types)
          (hsPkgs.wreq)
          (hsPkgs.lens)
          (hsPkgs.dhall)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "concraft-pl" = {
          depends  = [
            (hsPkgs.concraft-pl)
            (hsPkgs.concraft)
            (hsPkgs.tagset-positional)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.sgd)
            (hsPkgs.pedestrian-dag)
            (hsPkgs.crf-chain1-constrained)
            (hsPkgs.containers)
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.dhall)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }