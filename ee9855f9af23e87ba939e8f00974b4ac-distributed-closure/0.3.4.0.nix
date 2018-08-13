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
        name = "distributed-closure";
        version = "0.3.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "© Tweag I/O Limited";
      maintainer = "m@tweag.io";
      author = "Mathieu Boespflug";
      homepage = "https://github.com/tweag/distributed-closure";
      url = "";
      synopsis = "Serializable closures for distributed programming.";
      description = "See README.";
      buildType = "Simple";
    };
    components = {
      "distributed-closure" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.constraints)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.distributed-closure)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }