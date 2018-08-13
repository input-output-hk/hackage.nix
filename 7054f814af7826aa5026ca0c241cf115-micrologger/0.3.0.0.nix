{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "micrologger";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Savanni D'Gerinel";
      maintainer = "savanni@savannidgerinel.com";
      author = "Savanni D'Gerinel";
      homepage = "https://github.com/savannidgerinel/micrologger#readme";
      url = "";
      synopsis = "A super simple logging module. Only for use for very simple projects.";
      description = "A super simple logging module. Only for use for very simple projects.";
      buildType = "Simple";
    };
    components = {
      "micrologger" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.text-format)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "micrologger-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.micrologger)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }