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
        name = "positive";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Positive integers.";
      description = "Positive numbers.";
      buildType = "Simple";
    };
    components = {
      "positive" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.nats)
          (hsPkgs.semigroups)
        ];
      };
    };
  }