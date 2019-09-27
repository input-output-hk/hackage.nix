let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "derive-enumerable"; version = "0.1.1.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2015 Maciej Goszczycki";
      maintainer = "Maciej Goszczycki <mgoszcz2@gmail.com>";
      author = "Maciej Goszczycki <mgoszcz2@gmail.com>";
      homepage = "https://github.com/mgoszcz2/derive-enumerable";
      url = "";
      synopsis = "Generic instances for enumerating complex data types";
      description = "Generalized equivalent to doing `[minBound..maxBound]` but on complex types.\n\n> λ :m +Data.Enumerable.Generic\n> λ :set -XDeriveGeneric\n> λ data Flag = Flag Bool Word8 deriving (Show, Generic)\n> λ instance Enumerable Flag\n> λ instance Default Flag where def = Flag False 0\n> λ allEnum :: [Flag]\n> [Flag False 0,Flag True 0,Flag False 1, (..snip..) Flag False 255,Flag True 255]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          ];
        buildable = true;
        };
      };
    }