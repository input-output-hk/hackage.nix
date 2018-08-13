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
        name = "yaml-pretty-extras";
        version = "0.0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Daniel Firth";
      maintainer = "locallycompact@gmail.com";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Extra functionality for pretty printing Yaml documents.";
      description = "Extra functionality for pretty printing Yaml documents. Allows precise field ordering.";
      buildType = "Simple";
    };
    components = {
      "yaml-pretty-extras" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.microlens-platform)
          (hsPkgs.rio)
          (hsPkgs.yaml)
        ];
      };
      tests = {
        "yaml-pretty-extras-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.microlens-platform)
            (hsPkgs.rio)
            (hsPkgs.yaml)
            (hsPkgs.yaml-pretty-extras)
          ];
        };
      };
    };
  }