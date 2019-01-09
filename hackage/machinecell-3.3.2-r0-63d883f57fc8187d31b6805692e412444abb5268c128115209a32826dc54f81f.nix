{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { arrow-tr = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "machinecell"; version = "3.3.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Hidenori Azuma";
      maintainer = "Hidenori Azuma <as.capabl@gmail.com>";
      author = "Hidenori Azuma";
      homepage = "http://github.com/as-capabl/machinecell";
      url = "";
      synopsis = "Arrow based stream transducers";
      description = "Stream processing library similar to pipes, couduit, or machines.\n\nArrow combinatins are supported and can be used with the arrow notation.\nAFRP-like utilities are also available.\n\nA quick introduction is available in the Control.Arrow.Machine documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.free)
          (hsPkgs.semigroups)
          (hsPkgs.profunctors)
          (hsPkgs.transformers)
          ] ++ (pkgs.lib).optional (flags.arrow-tr) (hsPkgs.arrows);
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.profunctors)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.semigroups)
            (hsPkgs.machinecell)
            ];
          };
        };
      };
    }