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
      specVersion = "1.2";
      identifier = { name = "pacman-memcache"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Krzysztof Skrzętnicki";
      author = "Krzysztof Skrzętnicki";
      homepage = "";
      url = "";
      synopsis = "Read whole Pacman database which pushes it into the memory cache";
      description = "Pacman is Linux package manager. It is used by Arch Linux.\nIt's database is rather slow because it contains thousands of little files,\nwhich takes an enormous time to process.\nThe easiest way to speed up operations on database is force all those files into memory cache.\nThis is the purpose of this program: it reads whole package database,\nwhere it will reside until kernel decides to remove this files from cache.\nThree subsequent runs of pacman:\n> pacman -Ss foo  0,37s user 0,66s system 2% cpu 41,459 total\n> pacman -Ss foo  0,16s user 0,08s system 98% cpu 0,238 total\n> pacman -Ss foo  0,15s user 0,08s system 97% cpu 0,237 total\nUsing pacman-memcache:\n> pacman-memcache  1,11s user 0,53s system 6% cpu 26,312 total\n> pacman -Ss foo  0,15s user 0,09s system 19% cpu 1,260 total\n> pacman -Ss foo  0,15s user 0,08s system 97% cpu 0,235 total";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pacman-memcache" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory-tree" or (buildDepError "directory-tree"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          };
        };
      };
    }