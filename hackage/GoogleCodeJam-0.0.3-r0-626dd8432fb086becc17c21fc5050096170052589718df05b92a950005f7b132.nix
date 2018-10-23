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
        name = "GoogleCodeJam";
        version = "0.0.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Johannes Gerer <oss@johannesgerer.com>";
      author = "Johannes Gerer";
      homepage = "http://johannesgerer.com/GoogleCodeJam";
      url = "";
      synopsis = "A monad for flexible parsing of Google Code Jam input files with automatic parallelization.";
      description = "For more (including usage examples and solutions to GCJ problems) see <https://github.com/johannesgerer/GoogleCodeJam Readme> on Github.";
      buildType = "Simple";
    };
    components = {
      "GoogleCodeJam" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.mtl)
          (hsPkgs.parallel)
          (hsPkgs.containers)
          (hsPkgs.array)
        ];
      };
    };
  }