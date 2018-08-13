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
        name = "logging-effect-extra";
        version = "2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Jason Shipman";
      author = "Jason Shipman";
      homepage = "https://github.com/jship/logging-effect-extra#readme";
      url = "";
      synopsis = "Supplemental packages for `logging-effect`.";
      description = "Supplemental packages for `logging-effect`.";
      buildType = "Simple";
    };
    components = {
      "logging-effect-extra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.logging-effect)
          (hsPkgs.logging-effect-extra-file)
          (hsPkgs.logging-effect-extra-handler)
          (hsPkgs.prettyprinter)
        ];
      };
      exes = {
        "log-extra" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.logging-effect-extra)
          ];
        };
      };
    };
  }