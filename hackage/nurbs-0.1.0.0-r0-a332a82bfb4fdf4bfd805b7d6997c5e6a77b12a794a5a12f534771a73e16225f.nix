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
      specVersion = "1.10";
      identifier = {
        name = "nurbs";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voidex@live.com";
      author = "Alexanrd `voidex` Ruchkin";
      homepage = "https://github.com/mvoidex/nurbs";
      url = "";
      synopsis = "NURBS";
      description = "NURBS library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.hspec)
            (hsPkgs.nurbs)
          ];
        };
      };
    };
  }