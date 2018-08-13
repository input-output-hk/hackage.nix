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
      specVersion = "1.8";
      identifier = {
        name = "jdi";
        version = "0.0.3";
      };
      license = "GPL-2.0-only";
      copyright = "2012 Victor Denisov";
      maintainer = "Victor Denisov <denisovenator@gmail.com>";
      author = "Victor Denisov <denisovenator@gmail.com>";
      homepage = "https://github.com/VictorDenisov/jdi";
      url = "";
      synopsis = "Implementation of Java Debug Interface";
      description = "Implementation of Java Debug Interface";
      buildType = "Custom";
    };
    components = {
      "jdi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.network)
        ];
      };
      exes = {
        "Test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.jdi)
            (hsPkgs.mtl)
            (hsPkgs.network)
          ];
        };
      };
    };
  }