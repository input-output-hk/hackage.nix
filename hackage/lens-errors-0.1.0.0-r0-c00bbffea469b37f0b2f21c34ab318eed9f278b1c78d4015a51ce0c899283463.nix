{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "lens-errors"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/lens-errors#readme";
      url = "";
      synopsis = "Error handling in lens chains";
      description = "Please see the README on GitHub at <https://github.com/ChrisPenner/lens-errors#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.either) (hsPkgs.lens) ];
        };
      tests = {
        "lens-errors-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.either)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.lens-errors)
            ];
          };
        };
      };
    }