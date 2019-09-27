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
      identifier = { name = "salvia-demo"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sfvisser@cs.uu.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Demo Salvia servers.";
      description = "This package contains six simple example programs that show how to use the\nSalvia web application framework. The first demo, /salvia-demo/, contains a\nbigger example showing off some of the more advanced features and handler\nrunning on the default Salvia server implementation. The second demo,\n/salvia-cgi/ show how to switch the Salvia back-end and run a Salvia handler\nin CGI mode. The third example, /salvia-serve/, is a simple file server that\nuses the /c10k-server/ back-end and the /send-file/ package to server static\nfiles and directories. The other demos illustrate how to use some simple\naspects of the web framework.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."monads-fd" or (buildDepError "monads-fd"))
          (hsPkgs."threadmanager" or (buildDepError "threadmanager"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."c10k" or (buildDepError "c10k"))
          (hsPkgs."filestore" or (buildDepError "filestore"))
          (hsPkgs."fclabels" or (buildDepError "fclabels"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."salvia" or (buildDepError "salvia"))
          (hsPkgs."salvia-protocol" or (buildDepError "salvia-protocol"))
          (hsPkgs."salvia-extras" or (buildDepError "salvia-extras"))
          (hsPkgs."salvia-sessions" or (buildDepError "salvia-sessions"))
          (hsPkgs."salvia-websocket" or (buildDepError "salvia-websocket"))
          ];
        buildable = true;
        };
      exes = {
        "salvia-demo" = { buildable = true; };
        "salvia-serve" = { buildable = true; };
        "salvia.cgi" = { buildable = true; };
        "salvia-helloworld" = { buildable = true; };
        "salvia-query" = { buildable = true; };
        "salvia-directories" = { buildable = true; };
        };
      };
    }