{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "R-pandoc";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "corentin.dupont@gmail.com";
      author = "Corentin Dupont";
      homepage = "";
      url = "";
      synopsis = "A pandoc filter to express R plots inside markdown";
      description = "";
      buildType = "Simple";
    };
    components = {
      "R-pandoc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pandoc-types)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.split)
        ];
      };
      exes = {
        "R-pandoc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pandoc-types)
            (hsPkgs.R-pandoc)
          ];
        };
      };
    };
  }