{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "enum-utf8"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Chris Dornan";
      maintainer = "chris@chrisdornan.com";
      author = "Chris Dornan";
      homepage = "https://github.com/cdornan/enum-text#readme";
      url = "";
      synopsis = "An experimental Utf8 parsing toolkit for enumerated types";
      description = "An experimental Utf8 rendering and parsing toolkit for enumerated types based on enum-text and render-utf8. Please see the README on GitHub at <https://github.com/cdornan/enum-text#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.possibly)
          (hsPkgs.render-utf8)
          (hsPkgs.unordered-containers)
          ];
        };
      };
    }