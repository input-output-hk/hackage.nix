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
        name = "craft";
        version = "0.0.0.1";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "joehillen@gmail.com";
      author = "Joe Hillenbrand";
      homepage = "";
      url = "";
      synopsis = "A UNIX configuration management library in Haskell";
      description = "A UNIX configuration management EDSL/library in Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.ansi-terminal)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.derive)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.fast-logger)
          (hsPkgs.monad-logger)
          (hsPkgs.filepath)
          (hsPkgs.formatting)
          (hsPkgs.free)
          (hsPkgs.unordered-containers)
          (hsPkgs.ini)
          (hsPkgs.lifted-base)
          (hsPkgs.lens)
          (hsPkgs.megaparsec)
          (hsPkgs.MissingH)
          (hsPkgs.memory)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.path)
          (hsPkgs.path-io)
          (hsPkgs.process)
          (hsPkgs.process-extras)
          (hsPkgs.pureMD5)
          (hsPkgs.QuickCheck)
          (hsPkgs.random)
          (hsPkgs.split)
          (hsPkgs.streaming-commons)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.versions)
          (hsPkgs.wreq)
          (hsPkgs.yaml)
        ];
      };
      tests = {
        "craft-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.craft)
            (hsPkgs.hspec)
            (hsPkgs.hspec-megaparsec)
            (hsPkgs.megaparsec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }