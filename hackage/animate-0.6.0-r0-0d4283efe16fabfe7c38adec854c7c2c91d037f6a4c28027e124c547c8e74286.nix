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
        name = "animate";
        version = "0.6.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Joe Vargas";
      author = "";
      homepage = "https://github.com/jxv/animate#readme";
      url = "";
      synopsis = "Animation for sprites";
      description = "Prototypical sprite animation with type-safety.";
      buildType = "Simple";
    };
    components = {
      "animate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "animate-test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.animate)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }