{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "up"; version = "1.0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Eding";
      author = "Thomas Eding";
      homepage = "https://github.com/thomaseding/up";
      url = "";
      synopsis = "Command-line tool to generate paths for moving upward in a file system";
      description = "Command-line tool to generate paths for moving upward in a file system.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "up" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.lambda-options)
            (hsPkgs.mtl)
            (hsPkgs.split)
            ];
          };
        };
      };
    }