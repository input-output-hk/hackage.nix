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
        name = "serokell-util";
        version = "0.1.2.1";
      };
      license = "MIT";
      copyright = "2016 Serokell";
      maintainer = "Serokell <hi@serokell.io>";
      author = "Serokell";
      homepage = "https://github.com/serokell/serokell-util";
      url = "";
      synopsis = "General-purpose functions by Serokell";
      description = "Serokell-util is a library consisting of functions, which\nare not included in standard libraries, but are useful for\nmultiple projects. This library was created when it was\nfound that in new projects we need to use some utility\nfunctions from existing projects and don't want to\ncopy-paste them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.acid-state)
          (hsPkgs.aeson)
          (hsPkgs.aeson-extra)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.binary-orphans)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cereal-vector)
          (hsPkgs.containers)
          (hsPkgs.clock)
          (hsPkgs.data-msgpack)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.either)
          (hsPkgs.exceptions)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.formatting)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parsec)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.safecopy)
          (hsPkgs.scientific)
          (hsPkgs.semigroups)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.text-format)
          (hsPkgs.time-units)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.yaml)
        ];
      };
      tests = {
        "serokell-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.hspec)
            (hsPkgs.data-msgpack)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.safecopy)
            (hsPkgs.scientific)
            (hsPkgs.serokell-util)
            (hsPkgs.text)
            (hsPkgs.text-format)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }