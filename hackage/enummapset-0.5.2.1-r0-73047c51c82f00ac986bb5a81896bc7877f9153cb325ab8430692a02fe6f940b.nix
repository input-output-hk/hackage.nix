{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "enummapset"; version = "0.5.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2013 Michal Terepeta";
      maintainer = "Michal Terepeta <michal.terepeta@gmail.com>";
      author = "Michal Terepeta";
      homepage = "https://github.com/michalt/enummapset";
      url = "";
      synopsis = "IntMap and IntSet with Enum keys/elements.";
      description = "This package contains simple wrappers around 'Data.IntMap' and\n'Data.IntSet' with 'Enum' keys and elements respectively.\nEspecially useful for 'Int's wrapped with newtype.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      };
    }