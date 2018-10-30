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
        name = "sparser";
        version = "0.6";
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
      "library" = {
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