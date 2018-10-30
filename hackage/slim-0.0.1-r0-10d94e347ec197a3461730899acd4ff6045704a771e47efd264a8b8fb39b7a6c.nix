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
        name = "slim";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Jaap van der Plas <jvdplas@gmail.com>";
      author = "Jaap van der Plas";
      homepage = "";
      url = "";
      synopsis = "Functional reactive user interface programming";
      description = "More to come";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.pretty)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }