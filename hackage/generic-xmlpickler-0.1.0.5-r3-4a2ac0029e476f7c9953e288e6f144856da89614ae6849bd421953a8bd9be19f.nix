{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "generic-xmlpickler"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015, Silk";
      maintainer = "code@silk.co";
      author = "Silk";
      homepage = "http://github.com/silkapp/generic-xmlpickler";
      url = "";
      synopsis = "Generic generation of HXT XmlPickler instances using GHC Generics.";
      description = "Generic generation of HXT XmlPickler instances using GHC Generics.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.generic-deriving)
          (hsPkgs.hxt)
          (hsPkgs.text)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs.ghc-prim);
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.generic-xmlpickler)
            (hsPkgs.hxt)
            (hsPkgs.hxt-pickle-utils)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-th)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs.ghc-prim);
          };
        };
      };
    }