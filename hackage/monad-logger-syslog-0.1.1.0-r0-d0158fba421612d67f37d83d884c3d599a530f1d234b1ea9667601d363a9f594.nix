{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "monad-logger-syslog"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "devs@fpcomplete.com";
      author = "Greg Weber & FP Complete Developers";
      homepage = "https://github.com/fpco/monad-logger-syslog";
      url = "";
      synopsis = "syslog output for monad-logger";
      description = "syslog output for monad-logger";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.fast-logger)
          (hsPkgs.hsyslog)
          (hsPkgs.monad-logger)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        };
      };
    }