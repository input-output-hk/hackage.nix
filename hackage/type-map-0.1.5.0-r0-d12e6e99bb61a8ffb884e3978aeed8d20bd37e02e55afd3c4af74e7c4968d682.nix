{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "type-map"; version = "0.1.5.0"; };
      license = "MIT";
      copyright = "2017 Li-yao Xia";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://github.com/Lysxia/type-map";
      url = "";
      synopsis = "Type-indexed maps";
      description = "Maps where keys are types and values can have types depending on their keys.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.base)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.0.1") (hsPkgs.vector);
        };
      tests = {
        "type-map-test" = {
          depends = (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "8.0.1") [
            (hsPkgs.base)
            (hsPkgs.type-map)
            ];
          };
        "nocoerce-test" = {
          depends = (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "8.0.1") [
            (hsPkgs.base)
            (hsPkgs.type-map)
            ];
          };
        "type-map-static-test" = {
          depends = (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "8.0.1") [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.type-map)
            ];
          };
        };
      };
    }