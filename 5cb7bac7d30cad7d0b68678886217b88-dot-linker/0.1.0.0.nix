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
        name = "dot-linker";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Pedro Rodriguez Tavarez";
      maintainer = "pedro@pjrt.co";
      author = "Pedro Rodriguez Tavarez";
      homepage = "https://github.com/pjrt/Dot-Linker#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "dot-linker" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.turtle)
          (hsPkgs.text)
          (hsPkgs.system-filepath)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "dot-linker" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.dot-linker)
            (hsPkgs.turtle)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      tests = {
        "dot-linker-spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.dot-linker)
            (hsPkgs.HUnit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.attoparsec)
            (hsPkgs.turtle)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }