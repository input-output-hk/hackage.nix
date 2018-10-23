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
        name = "validationt";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "makeit@typeable.io";
      author = "Typeable.io contributors";
      homepage = "typeable.io";
      url = "";
      synopsis = "Straightforward validation monad. Convenient solution for validating web forms and APIs.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "validationt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.transformers)
          (hsPkgs.lens)
        ];
      };
    };
  }