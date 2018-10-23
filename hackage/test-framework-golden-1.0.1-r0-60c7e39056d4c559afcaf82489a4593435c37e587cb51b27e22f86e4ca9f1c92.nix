{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "test-framework-golden";
        version = "1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Roman Cheplyaka";
      homepage = "";
      url = "";
      synopsis = "Golden tests support for test-framework";
      description = "";
      buildType = "Simple";
    };
    components = {
      "test-framework-golden" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.test-framework)
          (hsPkgs.bytestring)
        ];
      };
    };
  }