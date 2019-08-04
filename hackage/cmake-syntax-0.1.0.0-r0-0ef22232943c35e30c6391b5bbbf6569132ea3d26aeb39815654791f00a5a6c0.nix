{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "cmake-syntax"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Georg Rudoy";
      maintainer = "0xd34df00d@gmail.com";
      author = "Georg Rudoy";
      homepage = "https://github.com/0xd34df00d/cmake-syntax#readme";
      url = "";
      synopsis = "Parser for the CMake syntax (CMakeLists.txt and .cmake files)";
      description = "Please see the README on GitHub at <https://github.com/0xd34df00d/cmake-syntax#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.raw-strings-qq)
          (hsPkgs.trifecta)
          ];
        };
      tests = {
        "cmake-syntax-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmake-syntax)
            (hsPkgs.hspec)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.trifecta)
            ];
          };
        };
      };
    }