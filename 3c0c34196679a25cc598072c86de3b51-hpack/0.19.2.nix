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
        name = "hpack";
        version = "0.19.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "";
      homepage = "https://github.com/sol/hpack#readme";
      url = "";
      synopsis = "An alternative format for Haskell packages";
      description = "See README at <https://github.com/sol/hpack#readme>";
      buildType = "Simple";
    };
    components = {
      "hpack" = {
        depends  = [
          (hsPkgs.Cabal)
          (hsPkgs.Glob)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.pretty)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "hpack" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.Glob)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hpack)
            (hsPkgs.pretty)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.Glob)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.interpolate)
            (hsPkgs.mockery)
            (hsPkgs.pretty)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }