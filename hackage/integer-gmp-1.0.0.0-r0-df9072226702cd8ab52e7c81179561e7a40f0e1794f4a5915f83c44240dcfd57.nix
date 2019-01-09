{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "integer-gmp"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "Integer library based on GMP";
      description = "";
      buildType = "Configure";
      };
    components = { "library" = { depends = [ (hsPkgs.ghc-prim) ]; }; };
    }