{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "rg"; version = "1.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Chris Dornan";
      maintainer = "chris.dornan@irisconnect.co.uk";
      author = "Chris Dornan";
      homepage = "https://github.com/cdornan/rg#readme";
      url = "";
      synopsis = "A dynamic/unbounded alternative to Bounded Enum";
      description = "Please see the README on GitHub at <https://github.com/cdornan/rg#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.fmt)
          (hsPkgs.possibly)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "nike-test" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.fmt)
            (hsPkgs.possibly)
            (hsPkgs.rg)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }