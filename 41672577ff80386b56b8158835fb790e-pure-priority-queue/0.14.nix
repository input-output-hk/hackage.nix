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
      specVersion = "1.2";
      identifier = {
        name = "pure-priority-queue";
        version = "0.14";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brad.larsen@gmail.com";
      author = "Bradford Larsen";
      homepage = "";
      url = "";
      synopsis = "A pure priority queue.";
      description = "A pure priority queue.";
      buildType = "Simple";
    };
    components = {
      "pure-priority-queue" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }