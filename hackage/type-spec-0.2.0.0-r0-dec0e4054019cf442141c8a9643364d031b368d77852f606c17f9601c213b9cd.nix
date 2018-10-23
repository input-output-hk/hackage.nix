{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "type-spec";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Sven Heyll";
      maintainer = "sven.heyll@gmail.com";
      author = "Sven Heyll";
      homepage = "https://github.com/sheyll/type-spec#readme";
      url = "";
      synopsis = "Type Level Specification by Example";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "type-spec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pretty)
          (hsPkgs.show-type)
        ];
      };
      tests = {
        "examples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.type-spec)
          ];
        };
      };
    };
  }