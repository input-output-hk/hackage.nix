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
        name = "trasa-reflex";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "@2017 Kyle McKean";
      maintainer = "mckean.kylej@gmail.com";
      author = "Kyle McKean";
      homepage = "";
      url = "";
      synopsis = "Reactive Type Safe Routing";
      description = "Reflex-frp integration for trasa";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.http-types)
          (hsPkgs.containers)
          (hsPkgs.jsaddle)
          (hsPkgs.ghcjs-dom)
          (hsPkgs.reflex)
          (hsPkgs.reflex-dom)
          (hsPkgs.trasa)
        ];
      };
    };
  }