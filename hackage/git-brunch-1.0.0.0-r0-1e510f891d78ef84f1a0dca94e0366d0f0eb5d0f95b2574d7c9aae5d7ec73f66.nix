{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "git-brunch"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 andys8";
      maintainer = "andys8@users.noreply.github.com";
      author = "andys8";
      homepage = "https://github.com/andys8/git-brunch#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/andys8/git-brunch#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.brick)
          (hsPkgs.microlens)
          (hsPkgs.process)
          (hsPkgs.vector)
          (hsPkgs.vty)
          ];
        };
      exes = {
        "git-brunch" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.git-brunch)
            (hsPkgs.microlens)
            (hsPkgs.process)
            (hsPkgs.vector)
            (hsPkgs.vty)
            ];
          };
        };
      tests = {
        "git-brunch-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brick)
            (hsPkgs.git-brunch)
            (hsPkgs.microlens)
            (hsPkgs.process)
            (hsPkgs.vector)
            (hsPkgs.vty)
            ];
          };
        };
      };
    }