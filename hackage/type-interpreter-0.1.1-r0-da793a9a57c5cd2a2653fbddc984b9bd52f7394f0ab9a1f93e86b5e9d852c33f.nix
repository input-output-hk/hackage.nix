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
      specVersion = "2.0";
      identifier = {
        name = "type-interpreter";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Ole Krüger 2018";
      maintainer = "ole@vprsm.de";
      author = "Ole Krüger";
      homepage = "";
      url = "";
      synopsis = "Interpreter for Template Haskell types";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "type-interpreter-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.type-interpreter)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }