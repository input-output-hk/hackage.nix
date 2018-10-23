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
        name = "logging-effect-extra-handler";
        version = "2.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Jason Shipman";
      author = "Jason Shipman";
      homepage = "https://github.com/jship/logging-effect-extra#readme";
      url = "";
      synopsis = "Handy logging handler combinators";
      description = "Handy logging handler combinators.";
      buildType = "Simple";
    };
    components = {
      "logging-effect-extra-handler" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.logging-effect)
          (hsPkgs.prettyprinter)
          (hsPkgs.time)
        ];
      };
      exes = {
        "iso8601-handler" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.logging-effect)
            (hsPkgs.logging-effect-extra-handler)
            (hsPkgs.prettyprinter)
          ];
        };
        "iso8601plus-handler" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.logging-effect)
            (hsPkgs.logging-effect-extra-handler)
            (hsPkgs.prettyprinter)
          ];
        };
        "rfc822-handler" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.logging-effect)
            (hsPkgs.logging-effect-extra-handler)
            (hsPkgs.prettyprinter)
          ];
        };
        "route-handler" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.logging-effect)
            (hsPkgs.logging-effect-extra-handler)
            (hsPkgs.prettyprinter)
          ];
        };
        "route-handler-with-iso8601" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.logging-effect)
            (hsPkgs.logging-effect-extra-handler)
            (hsPkgs.prettyprinter)
          ];
        };
      };
    };
  }