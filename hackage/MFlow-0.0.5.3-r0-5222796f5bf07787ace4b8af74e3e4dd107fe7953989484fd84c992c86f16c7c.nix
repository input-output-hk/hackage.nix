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
      identifier = { name = "MFlow"; version = "0.0.5.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gómez Corona";
      homepage = "";
      url = "";
      synopsis = "Web app server for stateful processes with safe, composable user interfaces.";
      description = "A Web framework with some unique features thanks to the power of the Haskell language.\nMFlow run stateful server processes. Because flows are stateful, not isolated request-responses, the code is more\nunderstandable, because all the flow of request and responses is coded by the programmer in a single function.\nAllthoug single request-response flows and callbacks are possible.\n\nTechnically it is a Web application server for stateful processes (flows) that are optionally persistent.\nThese processes interact with the user trough interfaces made of widgets that return back statically typed responses to\nthe process that sent the interface (including links). The process is coded in pure haskell (with optional XML from Haskell Server Pages).\nIt adopt and extend the formlet/applicative approach. The interfaces and communication are abstract, but it has bindings for HSP, Text.XHtml and byteString\n, Hack and WAI but it can be extended to non Web based architectures.\n\nIt includes Application Server features such is process and session timeouts\nand automatic recovery of flow execution state.\n\nThis release add transparent back button management, cached widgets, callbacks, modifiers, heterogeneous formatting AJAX,\nand WAI integration.\n\nIt is designed for coding an entire application can be run with no deployment with runghc in order\nto speed up the development process.\n\nSee \"MFlow.Forms\" for details\n\nAltroug still it is experimental, it is used in at least one future commercial project. So I have te commitment to\ncontinue its development. There are many examples in the documentation and in the package.\n\nTo do:\n\n-Clustering\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Workflow" or (buildDepError "Workflow"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
          (hsPkgs."xhtml" or (buildDepError "xhtml"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hack" or (buildDepError "hack"))
          (hsPkgs."hack-handler-simpleserver" or (buildDepError "hack-handler-simpleserver"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."RefSerialize" or (buildDepError "RefSerialize"))
          (hsPkgs."TCache" or (buildDepError "TCache"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."hsp" or (buildDepError "hsp"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."warp" or (buildDepError "warp"))
          ];
        buildable = true;
        };
      };
    }