{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "salvia";
          version = "1.0.0";
        };
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
        salvia = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.fclabels
            hsPkgs.MaybeT-transformers
            hsPkgs.monads-fd
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.process
            hsPkgs.threadmanager
            hsPkgs.pureMD5
            hsPkgs.random
            hsPkgs.safe
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unix
            hsPkgs.utf8-string
            hsPkgs.salvia-protocol
            hsPkgs.split
            hsPkgs.text
          ];
        };
      };
    }