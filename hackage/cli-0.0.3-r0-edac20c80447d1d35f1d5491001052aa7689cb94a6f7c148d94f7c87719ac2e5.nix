{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { executable = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cli";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Nicolas DI PRIMA <nicolas@di-prima.fr>";
      maintainer = "Nicolas DI PRIMA <nicolas@di-prima.fr>";
      author = "Nicolas DI PRIMA <nicolas@di-prima.fr>";
      homepage = "https://github.com/NicolasDP/hs-cli";
      url = "";
      synopsis = "Simple Command Line Interface Library";
      description = "This package provides a simple Command Line Library";
      buildType = "Simple";
    };
    components = {
      "cli" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "Example" = {
          depends  = pkgs.lib.optionals (flags.executable) [
            (hsPkgs.base)
            (hsPkgs.cli)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }