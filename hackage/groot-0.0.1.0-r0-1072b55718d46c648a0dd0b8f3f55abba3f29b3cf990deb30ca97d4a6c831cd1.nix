{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "groot";
        version = "0.0.1.0";
      };
      license = "Apache-2.0";
      copyright = "2017 A. Alonso Dominguez";
      maintainer = "alonso.domin@gmail.com";
      author = "A. Alonso Dominguez";
      homepage = "https://github.com/alonsodomin/groot#readme";
      url = "";
      synopsis = "Command line utility to manage AWS ECS resources";
      description = "`groot` is a command line application with the purpose of remote managing AWS ECS Clusters and their associated resources (Tasks, Instances, Services, etc.)";
      buildType = "Simple";
    };
    components = {
      "groot" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-autoscaling)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-ec2)
          (hsPkgs.amazonka-ecs)
          (hsPkgs.ansi-terminal)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.free)
          (hsPkgs.hashable)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.ini)
          (hsPkgs.lens)
          (hsPkgs.lifted-base)
          (hsPkgs.mmorph)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.pptable)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.prettyprinter-compat-ansi-wl-pprint)
          (hsPkgs.resourcet)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.stm-conduit)
          (hsPkgs.stm-delay)
          (hsPkgs.text)
          (hsPkgs.these)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid)
          (hsPkgs.vector)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "groot" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-autoscaling)
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-ec2)
            (hsPkgs.amazonka-ecs)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.free)
            (hsPkgs.groot)
            (hsPkgs.hashable)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.lifted-base)
            (hsPkgs.mmorph)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.stm)
            (hsPkgs.stm-chans)
            (hsPkgs.stm-conduit)
            (hsPkgs.stm-delay)
            (hsPkgs.text)
            (hsPkgs.these)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.uuid)
            (hsPkgs.vector)
            (hsPkgs.yaml)
          ];
        };
      };
      tests = {
        "groot-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-autoscaling)
            (hsPkgs.amazonka-core)
            (hsPkgs.amazonka-ec2)
            (hsPkgs.amazonka-ecs)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.checkers)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.free)
            (hsPkgs.groot)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.lifted-base)
            (hsPkgs.mmorph)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.quickcheck-text)
            (hsPkgs.resourcet)
            (hsPkgs.stm)
            (hsPkgs.stm-chans)
            (hsPkgs.stm-conduit)
            (hsPkgs.stm-delay)
            (hsPkgs.text)
            (hsPkgs.these)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.uuid)
            (hsPkgs.vector)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }