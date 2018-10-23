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
        name = "coroutine-object";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "";
      url = "";
      synopsis = "Object-oriented programming realization using coroutine";
      description = "Object-oriented programming realization using coroutine";
      buildType = "Simple";
    };
    components = {
      "coroutine-object" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.transformers-free)
          (hsPkgs.bytestring)
          (hsPkgs.safecopy)
          (hsPkgs.uuid)
          (hsPkgs.cereal)
          (hsPkgs.either)
        ];
      };
    };
  }