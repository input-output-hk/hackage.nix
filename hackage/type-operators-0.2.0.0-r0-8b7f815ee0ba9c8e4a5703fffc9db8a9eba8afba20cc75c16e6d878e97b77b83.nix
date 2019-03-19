{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "type-operators"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2016 Benedict Aas";
      maintainer = "x@shou.io";
      author = "Benedict Aas";
      homepage = "https://github.com/Shou/type-operators#readme";
      url = "";
      synopsis = "Various type-level operators";
      description = "A set of type-level operators meant to be helpful, e.g. (\$), a\ntightly binding (->), and the multi-constraint operator (Show <+> [a, b]).";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.ghc-prim) ]; };
      };
    }