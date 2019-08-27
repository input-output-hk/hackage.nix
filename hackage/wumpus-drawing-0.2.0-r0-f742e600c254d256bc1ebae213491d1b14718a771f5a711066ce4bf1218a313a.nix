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
      identifier = { name = "wumpus-drawing"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "High-level drawing objects built on Wumpus-Basic.";
      description = "\n\\*\\* WARNING \\*\\* - this package is sub-alpha. Although many of\nthe drawing objects have been improved since the code was split\nfrom Wumpus-Basic, the code is still prototypical. Essentially\nthis package is a /technology preview/ and not a re-usable\nlibrary.\n\nNOTE - many of the demos use font metrics. Font metrics for\nthe \\\"Core 14\\\" PostScript fonts are distributed as @*.afm@\nfiles with GhostScript in the @fonts@ directory. Wumpus expects\nthe GhostScript font metrics to be AFM version 2.0 files (this\nmatches GhostScript 8.63). Alternatively, metrics for the Core\n14 fonts are available from Adode (AFM version 4.1), see the\nlinks below. To run the demos properly you will need one of\nthese sets of metrics.\n\nAdobe Font techinal notes:\n<https://www.adobe.com/devnet/font.html>\n\nCore 14 AFM metrics:\n<https://www.adobe.com/content/dam/Adobe/en/devnet/font/pdfs/Core14_AFMs.tar>\n\nAlso note that Wumpus uses fallback metrics (derived from the\nmonospaced Courier font) when font loading fails, rather than\nthrowing a terminal error. Applications should ideally check\nthe font loading log to ensure that fonts have loaded correctly\n(the demos print this log to standard out).\n\nChangelog:\n\nv0.1.0 to 0.2.0:\n\n* Added new Shapes.\n\n* Move Geometry modules to Wumpus-Basic.\n\n* Re-implemented Chains.\n\n* Re-implemented LR-Text. Added CatText.\n\nv0.1.0:\n\n* Initial release - this is a split from @Wumpus-Basic@ making\nthe (very prototypical - read sub-alpha, unstable...) modules\nin the @Drawing@ hierarchy a separate package.\n\n* Simplified Chains - chains are now regular lists (though often\ninfinite). Drawings are made with chains using new zip-like\nfunctions.\n\n* Re-worked Shapes.\n\n* Re-worked Arrow and Arrow Tip types.\n\n* Re-worked ConnectorPaths.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."wumpus-core" or (buildDepError "wumpus-core"))
          (hsPkgs."wumpus-basic" or (buildDepError "wumpus-basic"))
          ];
        };
      };
    }