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
      identifier = { name = "stm-split"; version = "0.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "";
      url = "";
      synopsis = "TMVars, TVars and TChans with distinguished input and output side";
      description = "Transactional MVars, Vars and Channels with distinguished input and output side.\nWhen threads communicate via a TMVar, a TVar or a TChan\nthere are often clearly defined roles,\nwhich thread is the sender and which one is receiver.\nWe provide wrappers around the standard concurrency communication channels\nthat make the distinction clear and type safe.\n\nFor example, if a function has a parameter of type @TChan.In@\nthen it is sure that it will only write to that channel.\nAdditionally if the compiler warns about an unused @TChan.Out@\nthat was created by @TChan.new@\nthen you know that the receiver part of your communication is missing.\n\nSee also package @concurrent-split@ for non-transactional communication.\nThis package follows the same idea as @chan-split@ but is strictly Haskell 98.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      };
    }