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
    flags = { old-base = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "pubsub"; version = "0.11"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009, Sigbjorn Finne";
      maintainer = "Sigbjorn Finne <sigbjorn.finne@gmail.com>";
      author = "Sigbjorn Finne <sigbjorn.finne@gmail.com>";
      homepage = "http://projects.haskell.org/pubsub/";
      url = "";
      synopsis = "A library for Google/SixApart pubsub hub interaction";
      description = "A package for setting up, sending and receiving PubSub requests to pubsub hubs,\n<http://pubsubhubbub.googlecode.com/svn/trunk/pubsubhubbub-core-0.1.html>\n\nGit repository available at <git://coming.soon/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."feed" or (buildDepError "feed"))
          (hsPkgs."xml" or (buildDepError "xml"))
          (hsPkgs."mime" or (buildDepError "mime"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."json" or (buildDepError "json"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "pubsub.fcgi" = {
          depends = [ (hsPkgs."fastcgi" or (buildDepError "fastcgi")) ];
          buildable = true;
          };
        "feeder" = { buildable = true; };
        };
      };
    }