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
      identifier = { name = "quenya-verb"; version = "0.0.1"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright (c) 2015 Kaashif Hymabaccus";
      maintainer = "kaashif@kaashif.co.uk";
      author = "Kaashif Hymabaccus";
      homepage = "";
      url = "";
      synopsis = "Quenya verb conjugator";
      description = "Web app that conjugates Quenya verbs. Uses Scotty to provide a\nRESTful API (but really it's just a single URL you POST to),\nand React.js for a sleek, web scale, flat, synergistic front end.\n\nInstall and run `quenya-verb-server --help` for some more\ninformation on running the program.\n\nSee <http://github.com/kaashif/quenya-verb> for more\ninformation on building the latest version from source, using\nthe API and so on.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cond" or (buildDepError "cond"))
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."scotty" or (buildDepError "scotty"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."iproute" or (buildDepError "iproute"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."wai-middleware-static" or (buildDepError "wai-middleware-static"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."directory" or (buildDepError "directory"))
          ];
        };
      exes = {
        "quenya-verb-server" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."quenya-verb" or (buildDepError "quenya-verb"))
            ];
          };
        };
      };
    }