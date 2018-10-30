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
      specVersion = "1.2";
      identifier = {
        name = "satchmo-examples";
        version = "1.4";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Johannes Waldmann";
      homepage = "http://dfa.imn.htwk-leipzig.de/satchmo/";
      url = "";
      synopsis = "examples that show how to use satchmo";
      description = "examples that show how to use satchmo";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Factor" = {
          depends  = [
            (hsPkgs.satchmo)
            (hsPkgs.satchmo-backends)
            (hsPkgs.process)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.array)
          ];
        };
        "HC" = {
          depends  = [
            (hsPkgs.satchmo)
            (hsPkgs.satchmo-backends)
            (hsPkgs.process)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.array)
          ];
        };
        "VC" = {
          depends  = [
            (hsPkgs.satchmo)
            (hsPkgs.satchmo-funsat)
            (hsPkgs.process)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.array)
          ];
        };
        "QBF" = {
          depends  = [
            (hsPkgs.satchmo)
            (hsPkgs.satchmo-backends)
            (hsPkgs.process)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.array)
          ];
        };
      };
    };
  }