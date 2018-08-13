{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "jason";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "MIT";
      maintainer = "lmjubuntu@gmail.com";
      author = "Li Meng Jun";
      homepage = "https://github.com/Lupino/jason#readme";
      url = "";
      synopsis = "A fast JASONETTE-iOS JSON combinator library for haskell.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "jason" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "jason" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.jason)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.bytestring)
          ];
        };
      };
      tests = {
        "jason-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.jason)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }