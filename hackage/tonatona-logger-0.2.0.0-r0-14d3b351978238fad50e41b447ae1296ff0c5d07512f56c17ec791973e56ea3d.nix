{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tonatona-logger"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2018 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto, Dennis Gosnell";
      homepage = "https://github.com/tonatona-project/tonatona#readme";
      url = "";
      synopsis = "tonatona plugin for logging.";
      description = "Tonatona plugin for logging. This package provides a tonatona plugin for logging.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.rio)
          (hsPkgs.tonaparser)
          (hsPkgs.tonatona)
          ];
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.Glob)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.rio)
            (hsPkgs.tonaparser)
            (hsPkgs.tonatona)
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.rio)
            (hsPkgs.tonaparser)
            (hsPkgs.tonatona)
            ];
          };
        };
      };
    }