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
      identifier = { name = "salvia"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sfvisser@cs.uu.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Modular web application framework.";
      description = "Salvia is a feature rich modular web server and web application framework\nthat can be used to write dynamic websites in Haskell. From the lower level\nprotocol code up to the high level application code, everything is written as\na Salvia handler. This approach makes the server extremely extensible. To see\na demo of a Salvia website, please see the /salvia-demo/ package.\n\nAll the low level protocol code can be found in the /salvia-protocol/\npackage, which exposes the datatypes, parsers and pretty-printers for the\nURI, HTTP, Cookie and MIME protocols.\n\nThis Salvia package itself can be separated into three different parts: the\ninterface, the handlers and the implementation. The /interface/ module\ndefines a number of type classes that the user can build the web application\nagainst. Reading the request object, writing to the response, or gaining\ndirect access to the socket, all of these actions are reflected using one\ntype class aspect in the interface. The /handlers/ are self contained modules\nthat implement a single aspect of the Salvia web server. The handlers expose\ntheir interface requirements in their type context. Salvia can have multiple\n/implementations/ which can be switched by using different instances for the\ninterface type classes. This package has only one implementation, a simple\naccepting socket loop server. The /salvia-extras/ package has two additional\nimplementations. Keeping a clear distinction between the abstract server\naspects and the actual implementation makes it very easy to migrate existing\nweb application to different back-ends.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."fclabels" or (buildDepError "fclabels"))
          (hsPkgs."MaybeT-transformers" or (buildDepError "MaybeT-transformers"))
          (hsPkgs."monads-fd" or (buildDepError "monads-fd"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."threadmanager" or (buildDepError "threadmanager"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."salvia-protocol" or (buildDepError "salvia-protocol"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }