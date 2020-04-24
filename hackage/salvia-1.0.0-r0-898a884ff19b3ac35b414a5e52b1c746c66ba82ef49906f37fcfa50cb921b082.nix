{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
          (hsPkgs."MaybeT-transformers" or ((hsPkgs.pkgs-errors).buildDepError "MaybeT-transformers"))
          (hsPkgs."monads-fd" or ((hsPkgs.pkgs-errors).buildDepError "monads-fd"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."threadmanager" or ((hsPkgs.pkgs-errors).buildDepError "threadmanager"))
          (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."salvia-protocol" or ((hsPkgs.pkgs-errors).buildDepError "salvia-protocol"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }