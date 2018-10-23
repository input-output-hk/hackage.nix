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
        name = "purescript-bridge";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "robert.klotzner@gmx.at";
      author = "Robert Klotzner";
      homepage = "";
      url = "";
      synopsis = "Generate PureScript data types from Haskell data types";
      description = "";
      buildType = "Simple";
    };
    components = {
      "purescript-bridge" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.generic-deriving)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.purescript-bridge)
            (hsPkgs.text)
          ];
        };
      };
    };
  }