{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "polyToMonoid"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kevin Jardine <kevinjardine@yahoo.com>";
      author = "Kevin Jardine, Oleg Kiselyov";
      homepage = "";
      url = "";
      synopsis = "Polyvariadic functions mapping to a given monoid";
      description = "A polyvariadic function takes an indefinite number of possibly differently\ntyped parameters. polyToMonoid provides two polyvariadic functions that map\ntheir parameters into a given monoid.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }