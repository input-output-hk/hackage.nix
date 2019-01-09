{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { include-ghc-prim = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-prim"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "GHC primitives";
      description = "GHC primitives.";
      buildType = "Custom";
      };
    components = { "library" = { depends = [ (hsPkgs.rts) ]; }; };
    }