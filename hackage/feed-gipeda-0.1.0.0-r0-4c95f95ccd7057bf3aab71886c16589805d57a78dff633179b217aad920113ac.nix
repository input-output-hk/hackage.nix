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
        name = "feed-gipeda";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Sebastian Graf";
      maintainer = "sgraf1337@gmail.com";
      author = "Sebastian Graf";
      homepage = "http://github.com/sgraf812/feed-gipeda#readme";
      url = "";
      synopsis = "Simple project template from stack";
      description = "A service for easy handling of multiple repositories with <https://hackage.haskell.org/package/gipeda gipeda>.\n\nSee @--help@ for usage. Example invocation for benchmarking the whole of the @Pipes@ library:\n\n@\n\$ cat > feed-gipeda.yaml\nrepositories:\n- https://github.com/Gabriel439/Haskell-Pipes-Library\n^D\n\$ feed-gipeda --config=./feed-gipeda.yaml --deploy-to=./website\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.fsnotify)
          (hsPkgs.containers)
          (hsPkgs.yaml)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.network-uri)
          (hsPkgs.data-hash)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.distributed-process)
          (hsPkgs.distributed-process-extras)
          (hsPkgs.distributed-process-client-server)
          (hsPkgs.distributed-process-async)
          (hsPkgs.distributed-process-simplelocalnet)
          (hsPkgs.file-embed)
          (hsPkgs.reactive-banana)
          (hsPkgs.logging)
          (hsPkgs.temporary)
          (hsPkgs.concurrent-extra)
        ];
      };
      exes = {
        "feed-gipeda" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.feed-gipeda)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.logging)
          ];
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-hspec)
            (hsPkgs.HUnit)
            (hsPkgs.temporary)
            (hsPkgs.file-embed)
            (hsPkgs.exceptions)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.managed)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.fsnotify)
            (hsPkgs.network-uri)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.text)
            (hsPkgs.async)
          ];
        };
      };
    };
  }