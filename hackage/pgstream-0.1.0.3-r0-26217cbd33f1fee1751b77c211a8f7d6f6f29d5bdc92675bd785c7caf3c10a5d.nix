{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { optimized = true; j = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pgstream"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2015 Elsen Inc.";
      maintainer = "info@elsen.co";
      author = "Elsen Inc.";
      homepage = "";
      url = "";
      synopsis = "Elsen Accelerated Computing Engine";
      description = "Elsen Accelerated Computing Engine";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.vector)
          (hsPkgs.uuid)
          (hsPkgs.scientific)
          (hsPkgs.stringsearch)
          (hsPkgs.time)
          (hsPkgs.deepseq)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.resource-pool)
          (hsPkgs.blaze-builder)
          (hsPkgs.resourcet)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.postgresql-binary)
          (hsPkgs.async)
          (hsPkgs.stm)
          (hsPkgs.parallel)
          (hsPkgs.stm-conduit)
          (hsPkgs.stm-chans)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          ];
        };
      };
    }