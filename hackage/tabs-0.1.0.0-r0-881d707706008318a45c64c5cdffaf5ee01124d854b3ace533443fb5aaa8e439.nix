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
        name = "tabs";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomasedingcode@gmail.com";
      author = "Thomas Eding";
      homepage = "";
      url = "";
      synopsis = "Indents source files";
      description = "";
      buildType = "Simple";
    };
    components = {
      "tabs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tagged)
          (hsPkgs.filepath)
          (hsPkgs.monadlist)
          (hsPkgs.mtl)
        ];
      };
      exes = {
        "tabs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tagged)
            (hsPkgs.filepath)
            (hsPkgs.monadlist)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }