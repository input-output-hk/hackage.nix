{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "corecursive-main"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/githubuser/corecursive-main#readme";
      url = "";
      synopsis = "Write your main like it can call itself back.";
      description = "Please see the README on GitHub at <https://github.com/githubuser/corecursive-main#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.process) ]; };
      exes = {
        "corecursive-main-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.corecursive-main)
            (hsPkgs.process)
            (hsPkgs.unix)
            ];
          };
        };
      tests = {
        "corecursive-main-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.corecursive-main)
            (hsPkgs.process)
            ];
          };
        };
      };
    }