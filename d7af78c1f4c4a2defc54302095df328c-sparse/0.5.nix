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
        name = "sparse";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Lightweight parsing library based on partial functions.";
      description = "To be written.";
      buildType = "Simple";
    };
    components = {
      "sparse" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.nats)
          (hsPkgs.semigroups)
          (hsPkgs.pointed)
          (hsPkgs.monadplus)
        ];
      };
    };
  }