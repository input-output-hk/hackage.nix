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
      specVersion = "1.8";
      identifier = {
        name = "dockercook";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "(c) 2014 factis research GmbH";
      maintainer = "thiemann@factisresearch.com";
      author = "Alexander Thiemann";
      homepage = "https://github.com/factisresearch/dockercook";
      url = "";
      synopsis = "A build tool for multiple docker image layers";
      description = "Build and manage multiple docker image layers to speed up deployment";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.cryptohash)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.conduit-combinators)
          (hsPkgs.conduit-extra)
          (hsPkgs.resourcet)
          (hsPkgs.regex-compat)
          (hsPkgs.process)
          (hsPkgs.system-filepath)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.graph-core)
          (hsPkgs.persistent-sqlite)
          (hsPkgs.persistent-template)
          (hsPkgs.resourcet)
          (hsPkgs.mtl)
          (hsPkgs.monad-logger)
          (hsPkgs.cereal)
          (hsPkgs.safecopy)
          (hsPkgs.time)
          (hsPkgs.stm)
          (hsPkgs.hashable)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "dockercook" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dockercook)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "dockercook-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dockercook)
            (hsPkgs.HTF)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }