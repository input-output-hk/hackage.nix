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
        name = "large-hashable";
        version = "0.1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2015 - 2017 factis research GmbH";
      maintainer = "Stefan Wehr <wehr@cp-med.com>";
      author = "Stefan Wehr, Lukas Epple";
      homepage = "https://github.com/factisresearch/large-hashable";
      url = "";
      synopsis = "Efficiently hash (large) Haskell values";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "large-hashable" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytes)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.scientific)
          (hsPkgs.strict)
          (hsPkgs.time)
          (hsPkgs.template-haskell)
          (hsPkgs.utf8-light)
          (hsPkgs.vector)
          (hsPkgs.void)
        ];
      };
      tests = {
        "large-hashable-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.HTF)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytes)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.large-hashable)
            (hsPkgs.scientific)
            (hsPkgs.strict)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "large-hashable-benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.large-hashable)
            (hsPkgs.safecopy)
            (hsPkgs.text)
            (hsPkgs.deepseq)
            (hsPkgs.cryptohash)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.byteable)
            (hsPkgs.transformers)
            (hsPkgs.bytes)
          ];
        };
      };
    };
  }