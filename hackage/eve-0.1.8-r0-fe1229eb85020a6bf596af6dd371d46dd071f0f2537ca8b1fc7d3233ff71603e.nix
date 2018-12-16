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
      specVersion = "1.10";
      identifier = {
        name = "eve";
        version = "0.1.8";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/eve#readme";
      url = "";
      synopsis = "An extensible event framework";
      description = "An extensible event-driven application framework in haskell for building embarassingly modular software.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.free)
          (hsPkgs.data-default)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "eve-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.eve)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.data-default)
          ];
        };
      };
    };
  }