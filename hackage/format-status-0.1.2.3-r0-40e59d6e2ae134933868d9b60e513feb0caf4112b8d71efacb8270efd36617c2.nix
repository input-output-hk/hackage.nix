{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "format-status"; version = "0.1.2.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "";
      author = "George Rogers";
      homepage = "";
      url = "";
      synopsis = "A utility for writing the date to dzen2.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "format-status" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.data-concurrent-queue)
            ];
          };
        };
      };
    }