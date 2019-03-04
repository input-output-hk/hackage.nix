{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "log-effect-syslog"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lanablack@amok.cc";
      author = "Lana Black";
      homepage = "https://github.com/greydot/log-effect-syslog";
      url = "";
      synopsis = "Syslog functions for log-effect";
      description = "Utility functions for combining log-effect and syslog";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.extensible-effects)
          (hsPkgs.hsyslog)
          (hsPkgs.log-effect)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          ];
        };
      };
    }