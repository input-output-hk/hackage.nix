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
      specVersion = "1.18";
      identifier = {
        name = "hydrogen-syntax";
        version = "0.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "julfleischer@paypal.com";
      author = "Julian Fleischer";
      homepage = "https://github.com/scravy/hydrogen-syntax";
      url = "";
      synopsis = "Hydrogen Syntax";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hydrogen-syntax" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hydrogen-prelude)
          (hsPkgs.hydrogen-util)
          (hsPkgs.nicify)
          (hsPkgs.parsec)
          (hsPkgs.uuid)
        ];
      };
    };
  }