{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "prometheus-proc"; version = "0.1.1.0"; };
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
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.prometheus-client)
          (hsPkgs.regex-applicative)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.unix-memory)
          ];
        };
      };
    }