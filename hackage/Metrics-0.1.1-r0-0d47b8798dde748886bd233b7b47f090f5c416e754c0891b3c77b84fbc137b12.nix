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
        name = "Metrics";
        version = "0.1.1";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hstats)
        ];
      };
    };
  }