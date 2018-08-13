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
        name = "mps";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "";
      url = "";
      synopsis = "message passing style helpers";
      description = "message passing style helpers";
      buildType = "Simple";
    };
    components = {
      "mps" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.parallel)
          (hsPkgs.fgl)
          (hsPkgs.QuickCheck)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.pandoc)
          (hsPkgs.regexpr)
          (hsPkgs.parsec)
        ];
      };
    };
  }