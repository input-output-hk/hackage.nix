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
        version = "0.29.5";
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
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.infer-license)
          (hsPkgs.pretty)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
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
            (hsPkgs.bifunctors)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hpack)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.infer-license)
            (hsPkgs.pretty)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
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
            (hsPkgs.bifunctors)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.infer-license)
            (hsPkgs.interpolate)
            (hsPkgs.mockery)
            (hsPkgs.pretty)
            (hsPkgs.scientific)
            (hsPkgs.template-haskell)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }