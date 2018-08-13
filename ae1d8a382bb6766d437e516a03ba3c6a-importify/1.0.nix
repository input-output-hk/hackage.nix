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
        name = "importify";
        version = "1.0";
      };
      license = "MIT";
      copyright = "2017 Serokell";
      maintainer = "Serokell <hi@serokell.io>";
      author = "@serokell";
      homepage = "https://github.com/serokell/importify";
      url = "";
      synopsis = "Tool for haskell imports refactoring";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "importify" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.autoexporter)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.fmt)
          (hsPkgs.foldl)
          (hsPkgs.hashable)
          (hsPkgs.haskell-names)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.hse-cpp)
          (hsPkgs.log-warper)
          (hsPkgs.microlens-platform)
          (hsPkgs.path)
          (hsPkgs.path-io)
          (hsPkgs.pretty-simple)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.text-format)
          (hsPkgs.turtle)
          (hsPkgs.universum)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "importify" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.importify)
            (hsPkgs.log-warper)
            (hsPkgs.optparse-applicative)
            (hsPkgs.universum)
          ];
        };
        "golden-generator" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.importify)
            (hsPkgs.text)
            (hsPkgs.path)
            (hsPkgs.path-io)
            (hsPkgs.universum)
          ];
        };
      };
      tests = {
        "importify-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.importify)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.log-warper)
            (hsPkgs.microlens-platform)
            (hsPkgs.path)
            (hsPkgs.path-io)
            (hsPkgs.universum)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }