{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "graphbuilder";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Joseph Abrahamson <me@jspha.com>";
      author = "Joseph Abrahamson <me@jspha.com>";
      homepage = "https://github.com/tel/graphbuilder";
      url = "";
      synopsis = "A declarative, monadic graph construction language for small graphs";
      description = "A declarative, monadic graph construction language for small\ngraphs. See README.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.graphbuilder)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }