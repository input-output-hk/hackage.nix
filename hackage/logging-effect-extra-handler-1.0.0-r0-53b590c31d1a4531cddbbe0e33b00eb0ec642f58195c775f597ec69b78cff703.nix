{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "logging-effect-extra-handler";
        version = "1.0.0";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.logging-effect)
          (hsPkgs.wl-pprint-text)
          (hsPkgs.exceptions)
          (hsPkgs.time)
          ];
        };
      exes = {
        "dispatch-handler" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.logging-effect)
            (hsPkgs.wl-pprint-text)
            (hsPkgs.logging-effect-extra-handler)
            ];
          };
        "dispatch-handler-with-iso8601" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.logging-effect)
            (hsPkgs.wl-pprint-text)
            (hsPkgs.logging-effect-extra-handler)
            ];
          };
        "iso8601-handler" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.logging-effect)
            (hsPkgs.wl-pprint-text)
            (hsPkgs.logging-effect-extra-handler)
            ];
          };
        "iso8601plus-handler" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.logging-effect)
            (hsPkgs.wl-pprint-text)
            (hsPkgs.logging-effect-extra-handler)
            ];
          };
        "rfc822-handler" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.logging-effect)
            (hsPkgs.wl-pprint-text)
            (hsPkgs.logging-effect-extra-handler)
            ];
          };
        };
      };
    }