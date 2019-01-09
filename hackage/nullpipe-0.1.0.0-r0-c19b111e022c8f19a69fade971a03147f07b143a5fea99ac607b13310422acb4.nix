{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "nullpipe"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "AllRightsReserved";
      maintainer = "mwotton@gmail.com";
      author = "Mark Wotton";
      homepage = "https://github.com/mwotton/nullpipe#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.pipes) ];
        };
      tests = {
        "nullpipe-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.nullpipe)
            (hsPkgs.hspec)
            (hsPkgs.pipes)
            ];
          };
        };
      };
    }