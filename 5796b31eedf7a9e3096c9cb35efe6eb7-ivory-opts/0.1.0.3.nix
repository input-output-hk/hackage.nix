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
        name = "ivory-opts";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "leepike@galois.com";
      author = "Galois, Inc.";
      homepage = "http://ivorylang.org";
      url = "";
      synopsis = "Ivory compiler optimizations.";
      description = "Ivory compiler optimizations as well as compiler insertions.  Primarily used by backends.";
      buildType = "Simple";
    };
    components = {
      "ivory-opts" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.containers)
          (hsPkgs.data-reify)
          (hsPkgs.dlist)
          (hsPkgs.fgl)
          (hsPkgs.filepath)
          (hsPkgs.ivory)
          (hsPkgs.monadLib)
          (hsPkgs.pretty)
        ];
      };
    };
  }