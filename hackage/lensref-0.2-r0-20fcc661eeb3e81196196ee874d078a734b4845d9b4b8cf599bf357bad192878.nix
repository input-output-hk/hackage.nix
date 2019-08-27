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
    flags = { tests = false; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "lensref"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divipp@gmail.com";
      author = "Péter Diviánszky";
      homepage = "http://www.haskell.org/haskellwiki/LGtk";
      url = "";
      synopsis = "References which can be joined and on which lenses can be applied";
      description = "The lensref package provides and interface an two implementation\nfor references which can be joined and on which lenses can be applied.\n\n-The pure implementation is slow and has memory leaks but probably easier to follow.\nThis is the reference implementation, so if the the other implementation\ndiffers this has the right behaviour.\n\n-The fast implementation is intended for real usage.\n\nStatus:\n\n-The interface is getting stable. You can expect more functionality and minor changes on current functionality.\n\n-There are test cases for the first half of the interface.\nBoth implementations fulfil the test cases.\n\n-The pure implementation is ready.\n\n-The fast implementation is much faster than the pure implementation,\nbut it is far from being as fast as possible.\nProbably it also leaks memory.\n\nTo see what is possible to do with lens references, look at the test cases in \"Data.LensRef.Test\"\n\nFor more information visit the following links:\n\n-<http://www.haskell.org/haskellwiki/LGtk haskell.org wiki page>\n\n-<http://lgtk.wordpress.com/ Wordpress blog>\n\n-<https://github.com/divipp/lensref GitHub repository>\n\n-<http://hackage.haskell.org/package/lensref Haddock documentation (this page)>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          ] ++ (pkgs.lib).optionals (flags.tests) [
          (hsPkgs."operational" or (buildDepError "operational"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."lens" or (buildDepError "lens"))
          ];
        };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lensref" or (buildDepError "lensref"))
            ];
          };
        };
      };
    }