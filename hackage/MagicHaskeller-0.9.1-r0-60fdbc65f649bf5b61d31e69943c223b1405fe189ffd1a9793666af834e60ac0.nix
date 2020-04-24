{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { ghcapi = true; ghc7 = true; readfile = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "MagicHaskeller"; version = "0.9.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Susumu Katayama <skata@cs.miyazaki-u.ac.jp>";
      author = "Susumu Katayama";
      homepage = "http://nautilus.cs.miyazaki-u.ac.jp/~skata/MagicHaskeller.html";
      url = "";
      synopsis = "Automatic inductive functional programmer by systematic search";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          ] ++ (pkgs.lib).optionals (flags.ghcapi && !system.isWindows) [
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
          ]) ++ (pkgs.lib).optional (flags.readfile) (hsPkgs."haskell-src" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src"))) ++ (pkgs.lib).optional (flags.ghc7) (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"));
        buildable = true;
        };
      };
    }