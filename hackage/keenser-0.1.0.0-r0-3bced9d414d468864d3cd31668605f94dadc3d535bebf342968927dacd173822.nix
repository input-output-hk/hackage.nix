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
        name = "keenser";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016";
      maintainer = "jamesdabbs@gmail.com";
      author = "James Dabbs";
      homepage = "https://github.com/jamesdabbs/keenser#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "keenser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hedis)
          (hsPkgs.hostname)
          (hsPkgs.old-locale)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.random)
          (hsPkgs.scientific)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.thyme)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector-space)
        ];
      };
      exes = {
        "keenser-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.keenser)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.fast-logger)
            (hsPkgs.hedis)
            (hsPkgs.monad-logger)
            (hsPkgs.text)
            (hsPkgs.unix)
          ];
        };
      };
      tests = {
        "keenser-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.keenser)
          ];
        };
      };
    };
  }