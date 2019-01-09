{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "gray-extended"; version = "1.5.5"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Amy de Buitléir";
      maintainer = "amy@nualeargais.ie";
      author = "Amy de Buitléir";
      homepage = "https://github.com/mhwombat/gray-extended#readme";
      url = "";
      synopsis = "Gray encoding schemes";
      description = "Please see the README on GitHub at <https://github.com/mhwombat/gray-extended#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "gray-extended-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.gray-extended)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            ];
          };
        };
      };
    }