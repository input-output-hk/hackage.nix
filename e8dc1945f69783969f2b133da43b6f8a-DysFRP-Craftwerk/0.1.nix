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
        name = "DysFRP-Craftwerk";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marek Materzok";
      author = "Marek Materzok";
      homepage = "https://github.com/tilk/DysFRP";
      url = "";
      synopsis = "dysFunctional Reactive Programming on Craftwerk";
      description = "Simple Craftwerk bindings for DysFRP.";
      buildType = "Simple";
    };
    components = {
      "DysFRP-Craftwerk" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cairo)
          (hsPkgs.gtk)
          (hsPkgs.containers)
          (hsPkgs.craftwerk)
          (hsPkgs.craftwerk-gtk)
          (hsPkgs.DysFRP)
          (hsPkgs.DysFRP-Cairo)
        ];
      };
    };
  }