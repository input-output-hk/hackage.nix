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
    flags = { generate = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "cabal-nirvana"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/cabal-nirvana";
      url = "";
      synopsis = "Avoid Cabal dependency hell by constraining to known good versions.";
      description = "This tool takes a list of known compatible versions of libraries and forces them to be used. This should bypass a lot of cabal dependency hell, thereby inducing nirvana.\n\nOriginally, the idea was to use constraints in the Cabal config file to force this, but unfortunately there's a bug in cabal-install which prevents that from being possible. Instead, this tool now filters the list of available packages available.\n\nThe simplest usage is to just run cabal-nirvana. This will perform a few steps:\n\n1. Perform a cabal update\n\n2. Download the most recent version of the blessed package list.\n\n3. Modify the list of packages downloaded in the cabal update by the list of blessed packages.\n\nIf you want to leave Nirvana, just perform a normal cabal update.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal-nirvana" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = true;
          };
        "cabal-nirvana-generate" = {
          depends = (pkgs.lib).optionals (flags.generate) [
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."packdeps" or (buildDepError "packdeps"))
            ];
          buildable = if flags.generate then true else false;
          };
        };
      };
    }