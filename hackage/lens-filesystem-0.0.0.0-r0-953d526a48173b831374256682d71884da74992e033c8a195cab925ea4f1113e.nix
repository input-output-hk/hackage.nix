{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "lens-filesystem"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Chris Penner";
      maintainer = "example@example.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/lens-filesystem#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/ChrisPenner/lens-fs#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.lens)
          (hsPkgs.lens-action)
          ];
        };
      tests = {
        "lens-filesystem-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.lens-action)
            (hsPkgs.lens-filesystem)
            ];
          };
        };
      };
    }