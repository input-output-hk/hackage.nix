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
      specVersion = "1.18";
      identifier = {
        name = "di-monad";
        version = "1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2017-2018";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/di";
      url = "";
      synopsis = "mtl flavoured typeful hierarchical structured logging for di-core.";
      description = "mtl flavoured typeful hierarchical structured logging for di-core.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.di-core)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.pipes)
          (hsPkgs.stm)
          (hsPkgs.transformers)
        ];
      };
    };
  }