{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "spoonutil"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "John Morrice";
      author = "John Morrice";
      homepage = "http://github.com/elginer/SpoonUtilities";
      url = "";
      synopsis = "Spoon's utilities.  Simple testing and nice looking error reporting.";
      description = "Spoon's utilities.  Simple testing and nice looking error reporting.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.parsec)
          (hsPkgs.extensible-exceptions)
          ];
        };
      exes = { "test" = {}; };
      };
    }