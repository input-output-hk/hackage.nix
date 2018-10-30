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
        name = "hpack-convert";
        version = "1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Pedro Tacla Yamada <tacla.yamada@gmail.com>";
      author = "";
      homepage = "https://github.com/yamadapc/hpack-convert#readme";
      url = "";
      synopsis = "Convert Cabal manifests into hpack's package.yamls";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.Cabal)
          (hsPkgs.pretty)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.Glob)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.aeson)
          (hsPkgs.split)
        ];
      };
      exes = {
        "hpack-convert" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.Cabal)
            (hsPkgs.pretty)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.Glob)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.aeson)
            (hsPkgs.split)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.Cabal)
            (hsPkgs.pretty)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.Glob)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.aeson)
            (hsPkgs.split)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.temporary)
            (hsPkgs.mockery)
            (hsPkgs.interpolate)
            (hsPkgs.aeson-qq)
          ];
        };
      };
    };
  }