{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "brick-filetree"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/brick-filetree#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/ChrisPenner/brick-filetree#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.brick)
          (hsPkgs.comonad)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.directory-tree)
          (hsPkgs.filepath)
          (hsPkgs.free)
          (hsPkgs.vector)
          (hsPkgs.vty)
          ];
        };
      tests = {
        "brick-filetree-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.brick-filetree)
            (hsPkgs.comonad)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.directory-tree)
            (hsPkgs.filepath)
            (hsPkgs.free)
            (hsPkgs.vector)
            (hsPkgs.vty)
            ];
          };
        };
      };
    }