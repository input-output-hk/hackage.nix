{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "dsmc"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dima@dzhus.org";
      author = "Dmitry Dzhus";
      homepage = "";
      url = "";
      synopsis = "DSMC library for rarefied gas dynamics";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.entropy)
          (hsPkgs.hslogger)
          (hsPkgs.mwc-random)
          (hsPkgs.parallel)
          (hsPkgs.primitive)
          (hsPkgs.repa)
          (hsPkgs.strict)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          ];
        };
      };
    }