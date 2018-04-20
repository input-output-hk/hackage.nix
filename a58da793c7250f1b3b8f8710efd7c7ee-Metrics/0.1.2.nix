{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Metrics";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Hamner (ben@benhamner.com)";
        author = "Ben Hamner (ben@benhamner.com)";
        homepage = "http://github.com/benhamner/Metrics/";
        url = "";
        synopsis = "Evaluation metrics commonly used in supervised machine learning";
        description = "Evaluation metrics commonly used in supervised machine learning";
        buildType = "Simple";
      };
      components = {
        Metrics = {
          depends  = [
            hsPkgs.base
            hsPkgs.hstats
          ];
        };
      };
    }