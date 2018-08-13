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
        name = "np-linear";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ariep@xs4all.nl";
      author = "Arie Peterson";
      homepage = "";
      url = "";
      synopsis = "Linear algebra for the numeric-prelude framework";
      description = "";
      buildType = "Simple";
    };
    components = {
      "np-linear" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.numeric-prelude)
          (hsPkgs.reflection)
          (hsPkgs.tagged)
        ];
      };
    };
  }