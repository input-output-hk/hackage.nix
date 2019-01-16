{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "prometheus-proc"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ollie@ocharles.org.uk";
      author = "Ollie Charles";
      homepage = "https://github.com/fimad/prometheus-haskell";
      url = "";
      synopsis = "Export metrics from /proc for the current process";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.unix-memory)
          (hsPkgs.unix)
          (hsPkgs.regex-applicative)
          (hsPkgs.prometheus-client)
          ];
        };
      };
    }