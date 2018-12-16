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
      specVersion = "1.10";
      identifier = {
        name = "generic-pretty";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "(c) 2015 Hideyuki Tanaka";
      maintainer = "tanaka.hideyuki@gmail.com";
      author = "Hideyuki Tanaka";
      homepage = "https://github.com/tanakh/generic-pretty";
      url = "";
      synopsis = "Pretty printing for Generic value";
      description = "Pretty printing for Generic value. For more detail, please refer to <https://github.com/tanakh/generic-pretty>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "generic-pretty-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.generic-pretty)
          ];
        };
      };
    };
  }