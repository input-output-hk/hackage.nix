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
        name = "distributed-process-ekg";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexander Bondarenko <aenor.realm@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Collect node stats for EKG";
      description = "";
      buildType = "Simple";
    };
    components = {
      "distributed-process-ekg" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.distributed-process)
          (hsPkgs.ekg-core)
        ];
      };
    };
  }