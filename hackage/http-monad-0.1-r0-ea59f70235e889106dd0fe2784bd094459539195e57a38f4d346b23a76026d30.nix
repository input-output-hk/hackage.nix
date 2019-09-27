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
    flags = { splitbase = false; buildtestserver = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "http-monad"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, Henning Thielemann";
      maintainer = "Henning Thielemann <http@henning-thielemann.de>";
      author = "Henning Thielemann <http@henning-thielemann.de>";
      homepage = "";
      url = "";
      synopsis = "Monad abstraction for HTTP allowing lazy transfer and non-I/O simulation";
      description = "This library implements a monad class with various interesting instances:\n\n* Lazy I/O allows for fetching documents via HTTP on demand\n\n* Non-I/O allows for testing HTTP communication without any IO action\n\nBy using this monad you can implement HTTP communication in a very general way.\nYou may add further functionality by adding custom sub-classes.\n\nWe inherit all content data types from the HTTP-4000 package,\nsuch as String as well as strict and lazy ByteString.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."lazyio" or (buildDepError "lazyio"))
          ] ++ (if flags.splitbase
          then [ (hsPkgs."base" or (buildDepError "base")) ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ]);
        buildable = true;
        };
      exes = {
        "infinite-httpd" = {
          depends = (pkgs.lib).optional (flags.buildtestserver) (hsPkgs."httpd-shed" or (buildDepError "httpd-shed"));
          buildable = if flags.buildtestserver then true else false;
          };
        };
      };
    }