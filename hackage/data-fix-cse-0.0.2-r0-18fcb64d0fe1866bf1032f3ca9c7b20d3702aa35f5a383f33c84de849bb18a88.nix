{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "data-fix-cse";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov, Oleg Kiselyov";
      homepage = "https://github.com/anton-k/data-fix-cse";
      url = "";
      synopsis = "Common subexpression elimination for the fixploint types.";
      description = "Common subexpression elimination for the fixploint types.";
      buildType = "Simple";
    };
    components = {
      "data-fix-cse" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.data-fix)
          (hsPkgs.transformers)
          (hsPkgs.containers)
        ];
      };
    };
  }