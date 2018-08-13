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
        name = "csound-expression-dynamic";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/csound-expression-dynamic";
      url = "";
      synopsis = "dynamic core for csound-expression library";
      description = "";
      buildType = "Simple";
    };
    components = {
      "csound-expression-dynamic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.transformers)
          (hsPkgs.wl-pprint)
          (hsPkgs.Boolean)
          (hsPkgs.data-fix)
          (hsPkgs.data-fix-cse)
          (hsPkgs.hashable)
        ];
      };
    };
  }