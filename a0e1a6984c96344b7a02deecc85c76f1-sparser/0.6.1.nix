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
        name = "sparser";
        version = "0.6.1";
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
      "sparser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.nats)
          (hsPkgs.semigroups)
          (hsPkgs.pointed)
          (hsPkgs.monadplus)
          (hsPkgs.data-default)
          (hsPkgs.containers)
        ];
      };
    };
  }