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
      specVersion = "1.2";
      identifier = {
        name = "Workflow";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "FreeChooser";
      description = "FreeChooser project";
      buildType = "Simple";
    };
    components = {
      "Workflow" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.TCache)
          (hsPkgs.network)
          (hsPkgs.RefSerialize)
          (hsPkgs.stm)
          (hsPkgs.old-time)
        ];
      };
    };
  }