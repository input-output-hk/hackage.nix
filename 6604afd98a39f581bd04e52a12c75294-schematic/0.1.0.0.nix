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
        name = "schematic";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "denis.redozubov@gmail.com";
      author = "Denis Redozubov";
      homepage = "";
      url = "";
      synopsis = "JSON-biased spec and validation tool";
      description = "";
      buildType = "Simple";
    };
    components = {
      "schematic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.deriving-compat)
          (hsPkgs.regex-compat)
          (hsPkgs.scientific)
          (hsPkgs.singletons)
          (hsPkgs.smallcheck)
          (hsPkgs.smallcheck-series)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.validationt)
          (hsPkgs.vector)
          (hsPkgs.vinyl)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec-discover)
            (hsPkgs.hspec-smallcheck)
            (hsPkgs.regex-compat)
            (hsPkgs.schematic)
            (hsPkgs.smallcheck)
            (hsPkgs.smallcheck-series)
            (hsPkgs.singletons)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.validationt)
            (hsPkgs.vinyl)
          ];
        };
      };
    };
  }