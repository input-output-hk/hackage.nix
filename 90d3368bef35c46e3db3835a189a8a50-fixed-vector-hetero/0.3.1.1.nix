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
      specVersion = "1.6";
      identifier = {
        name = "fixed-vector-hetero";
        version = "0.3.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "http://github.org/Shimuuar/fixed-vector-hetero";
      url = "";
      synopsis = "Generic heterogeneous vectors";
      description = "Generic heterogeneous vectors";
      buildType = "Simple";
    };
    components = {
      "fixed-vector-hetero" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.transformers)
          (hsPkgs.ghc-prim)
          (hsPkgs.fixed-vector)
          (hsPkgs.primitive)
        ];
      };
    };
  }