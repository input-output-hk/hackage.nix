{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { exe = false; };
    package = {
      specVersion = "1.21";
      identifier = {
        name = "base-compat-migrate";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Adam Bergmark";
      maintainer = "adam@bergmark.nl";
      author = "Adam Bergmark";
      homepage = "https://github.com/bergmark/base-compat-migrate#readme";
      url = "";
      synopsis = "Helps migrating projects to base-compat(-batteries).";
      description = "Please see the included README or visit <https://github.com/bergmark/base-compat-migrate#readme>.";
      buildType = "Simple";
    };
    components = {
      "base-compat-migrate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
        ];
      };
      exes = {
        "base-compat-migrate-generate" = {
          depends  = pkgs.lib.optionals (flags.exe) [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.http-conduit)
            (hsPkgs.string-conversions)
          ];
        };
      };
    };
  }