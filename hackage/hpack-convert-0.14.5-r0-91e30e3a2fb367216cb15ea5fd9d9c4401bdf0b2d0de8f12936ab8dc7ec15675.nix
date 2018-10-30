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
        version = "0.14.5";
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
            (hsPkgs.hpack-convert)
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