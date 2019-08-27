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
      identifier = { name = "Noise"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hugo Gomes <mr.hugo.gomes@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A Haskell coherent noise generator";
      description = "A Haskell coherent noise generator roughly based on libnoise.\nFor more information on libnoise, please check: <http://libnoise.sourceforge.net>\nThe noise modules were extensively profiled and benchmarked,\nthe slower pure functions were rewritten in C.\nThe main objective of this packer is to provide a simple interface\nto compose noise modules.\nYou could compose several noise modules like this:\n\n> myPerlin = perlin `isSourceOf` scalebias { scale = 1.0 }\n>                   `isSourceOf` absolute\n> myComposition = perlin { perlinFrequency = 0.123 }\n>                 `andModule` billow { billowOctaves = 12 }\n>                 `andModule` myPerlin\n>                 `areSourcesOf`\n>                 select { upperBound = 0.7, lowerBound = 0.2 }\n\nThis is a 3D noise package, to get a value you need to specify a\ntriple:\n\n> getValue myComposition (-0.1, -0.5, 0.76)\n\nFor more information please read the documentation of each module\nbellow.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          ];
        };
      };
    }