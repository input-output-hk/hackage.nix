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
        name = "machinecell";
        version = "1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Hidenori Azuma";
      maintainer = "Hidenori Azuma <as.capabl@gmail.com>";
      author = "Hidenori Azuma";
      homepage = "http://github.com/as-capabl/machinecell";
      url = "";
      synopsis = "Arrow based stream transducers";
      description = "Stream processing library similar to pipes, couduit, or machines.\n\nArrow combinatins are supported and can be used with the arrow notation.\nAFRP-like utilities are also available.";
      buildType = "Simple";
    };
    components = {
      "machinecell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.free)
          (hsPkgs.profunctors)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.profunctors)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.machinecell)
          ];
        };
      };
    };
  }