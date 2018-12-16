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
      specVersion = "1.6";
      identifier = {
        name = "Hermes";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010, University of Tromsø";
      maintainer = "Svein Ove Aas <svein.ove@aas.no>";
      author = "Svein Ove Aas <svein.ove@aas.no>";
      homepage = "";
      url = "";
      synopsis = "Message-based middleware layer";
      description = "A middleware providing best-effort unicast, remote procedure calls,\nprobabilistic (and slow!) broadcast and automatic membership\nmanagement, meant for small to medium networks";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.stm)
          (hsPkgs.hslogger)
          (hsPkgs.old-time)
          (hsPkgs.containers)
          (hsPkgs.AES)
          (hsPkgs.SHA2)
          (hsPkgs.RSA)
          (hsPkgs.network)
          (hsPkgs.yjtools)
          (hsPkgs.random)
          (hsPkgs.monads-tf)
          (hsPkgs.syb)
          (hsPkgs.unamb)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
    };
  }