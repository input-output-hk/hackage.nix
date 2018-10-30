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
        name = "hocker";
        version = "1.0.0";
      };
      license = "Apache-2.0";
      copyright = "2016 Awake Security";
      maintainer = "opensource@awakesecurity.com";
      author = "Awake Security";
      homepage = "https://github.com/awakesecurity/hocker#readme";
      url = "";
      synopsis = "Interact with the docker registry and generate nix build instructions";
      description = "@hocker@ is a suite of command line utilities and a library for:\n\n* fetching a docker image\n* fetching a layer of an image\n* fetching an image's configuration\n* fetching a docker registry image manifest\n* generating nix build instructions from a registry image manifest\n\nThe motivation for this tool came from a need to fetch docker\nimage artifacts from a docker registry without the stock docker\ntooling that is designed to only work with the docker daemon.\n\nThese tools /only/ work with version 2 of the docker registry and\ndocker version (>=) 1.10.\n\nFor a complete set of usage examples please see the project's <https://github.com/awakesecurity/hocker#readme README.md>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.concurrentoutput)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.data-fix)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.foldl)
          (hsPkgs.hnix)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.lifted-base)
          (hsPkgs.memory)
          (hsPkgs.mtl)
          (hsPkgs.neat-interpolation)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.optparse-applicative)
          (hsPkgs.optparse-generic)
          (hsPkgs.pooled-io)
          (hsPkgs.pureMD5)
          (hsPkgs.scientific)
          (hsPkgs.tar)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.turtle)
          (hsPkgs.unordered-containers)
          (hsPkgs.uri-bytestring)
          (hsPkgs.vector)
          (hsPkgs.wreq)
          (hsPkgs.zlib)
        ];
      };
      exes = {
        "hocker-image" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.hocker)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.optional-args)
            (hsPkgs.optparse-applicative)
            (hsPkgs.optparse-generic)
            (hsPkgs.temporary)
            (hsPkgs.text)
          ];
        };
        "hocker-layer" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.filepath)
            (hsPkgs.hocker)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.optional-args)
            (hsPkgs.optparse-applicative)
            (hsPkgs.optparse-generic)
            (hsPkgs.temporary)
            (hsPkgs.text)
          ];
        };
        "hocker-config" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.hocker)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.optional-args)
            (hsPkgs.optparse-applicative)
            (hsPkgs.optparse-generic)
            (hsPkgs.temporary)
            (hsPkgs.text)
          ];
        };
        "hocker-manifest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.lens)
            (hsPkgs.optparse-generic)
            (hsPkgs.temporary)
            (hsPkgs.optparse-applicative)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.optional-args)
            (hsPkgs.hocker)
          ];
        };
        "docker2nix" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-fix)
            (hsPkgs.filepath)
            (hsPkgs.hnix)
            (hsPkgs.hocker)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.optional-args)
            (hsPkgs.optparse-applicative)
            (hsPkgs.optparse-generic)
            (hsPkgs.temporary)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "hocker-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.hocker)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.network-uri)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }