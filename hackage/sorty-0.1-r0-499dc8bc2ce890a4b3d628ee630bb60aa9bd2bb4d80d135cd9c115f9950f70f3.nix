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
      specVersion = "1.6";
      identifier = { name = "sorty"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Krzysztof Skrzetnicki <krzysztof.skrzetnicki+hackage@gmail.com>";
      author = "Krzysztof Skrzetnicki <krzysztof.skrzetnicki+hackage@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Sort lines per file size";
      description = "This simple tool sorts input filelines by first collumn suffixed by unit. Recognized units:\n\n> k = 1000\n> m = 1000 * k\n> g = 1000 * m\n\n> K = 1024\n> M = 1024 * K\n> G = 1024 * G\n\nI needed this for output from 'du -h':\n\n> \$ du -h -a\n> 4,0K   ./sorty.cabal\n> 20K   ./sorty.o\n> 0   ./.#sorty.cabal\n> 4,0K   ./#sorty.cabal#\n> 4,0K   ./sorty.hs~\n> 4,0K   ./sorty.hs\n> 4,0K   ./sorty.hi\n> 868K   ./sorty\n> 912K   .\n\nFiltered through sorty:\n\n> \$ du -h -a | ./sorty\n>\n> 0   ./.#sorty.cabal\n> 4,0K   ./sorty.cabal\n> 4,0K   ./#sorty.cabal#\n> 4,0K   ./sorty.hs~\n> 4,0K   ./sorty.hs\n> 4,0K   ./sorty.hi\n> 20K   ./sorty.o\n> 868K   ./sorty\n> 912K   .";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sorty" = {
          depends = [
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }