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
        name = "persistent-parser";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mchaver@gmail.com";
      author = "James M.C. Haver II";
      homepage = "";
      url = "";
      synopsis = "Parse persistent model files";
      description = "Parse persistent model files";
      buildType = "Simple";
    };
    components = {
      "persistent-parser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.hspec)
            (hsPkgs.persistent-parser)
            (hsPkgs.text)
          ];
        };
      };
    };
  }