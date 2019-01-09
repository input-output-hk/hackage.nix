{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Deadpan-DDP"; version = "0.4.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "maydwell@gmail.com";
      author = "Lyndon Maydwell";
      homepage = "http://github.com/sordina/Deadpan-DDP";
      url = "";
      synopsis = "Write clients for Meteor's DDP Protocol";
      description = "The Deadpan-DDP project includes a debugging-tool, as well as a general purpose library.\n\n<https://github.com/meteor/meteor/blob/devel/packages/ddp/DDP.md DDP> is the protocol that\n<http://meteor.com Meteor> speaks between client and server.\n\nThe DDP tech-stack is: Websockets -> JSON -> EJson -> Collections -> Subscriptions + RPC.\n\nIn order to use the debugging tool, install this package and run `deadpan` for a usage\nstatement.\n\nIn order to use the library, simply import \"Web.DDP.Deadpan\".\n\nThe DSL monad is largely based around RPC calls and callbacks.\nIn order to write an application you would call\n`Web.DDP.Deadpan.runClient` with\n\n* An initial application state (this includes initial callbacks)\n\n* A set of connection parameters\n\n* A `Web.DDP.Deadpan.DSL.Deadpan` application\n\nThere are several callback-sets provided in \"Web.DDP.Deadpan\",\nhowever, if you want to pick in a more granular fashion,\nlook inside \"Web.DDP.Deadpan.Callbacks\".\n\nThe connection parameters are the triple (Domain, Port, Path)...\n\nFor convenience the function getURI is provided to turn a URI\nof the form <websocket://localhost:3000/websocket>\ninto the triple (Right (\"localhost\", 3000, \"websocket\"))...\nor an error (Left \"error message\").\n\nRefer to the <https://github.com/sordina/Deadpan-DDP#deadpan-ddp README.md> on Github for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.websockets)
          (hsPkgs.network)
          (hsPkgs.uuid)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.base64-bytestring)
          (hsPkgs.aeson)
          (hsPkgs.scientific)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.convertible)
          (hsPkgs.lens)
          (hsPkgs.network-uri)
          (hsPkgs.safe)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.IfElse)
          ];
        };
      exes = {
        "deadpan" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.websockets)
            (hsPkgs.network)
            (hsPkgs.uuid)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.base64-bytestring)
            (hsPkgs.aeson)
            (hsPkgs.scientific)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.convertible)
            (hsPkgs.lens)
            (hsPkgs.network-uri)
            (hsPkgs.safe)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.stm)
            (hsPkgs.transformers)
            (hsPkgs.IfElse)
            ];
          };
        };
      };
    }