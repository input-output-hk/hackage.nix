{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "prim"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2020 Sodality";
      maintainer = "daig@sodality.cc";
      author = "Dai";
      homepage = "https://github.com/daig/prim#readme";
      url = "";
      synopsis = "An ergonomic but conservative interface to ghc-prim";
      description = "This library reorganizes @ghc-prim@ in a sane but conservative way\n, without adding any fancy tricks like overloading or extra functions.\nIt's meant as a foundation for low-level programming in haskell, as well as (eventually),\na comprehensive home for documentation on ghc magic.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."microbase" or ((hsPkgs.pkgs-errors).buildDepError "microbase"))
          ];
        buildable = true;
        };
      };
    }