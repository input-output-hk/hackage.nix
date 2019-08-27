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
    flags = { build-example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-extra"; version = "3.0.28"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/yesodweb/wai";
      url = "";
      synopsis = "Provides some basic WAI handlers and middleware.";
      description = "Provides basic WAI handler and middleware functionality:\n\n* WAI Testing Framework\n\nHspec testing facilities and helpers for WAI.\n\n* Event Source/Event Stream\n\nSend server events to the client. Compatible with the JavaScript\nEventSource API.\n\n* Accept Override\n\nOverride the Accept header in a request. Special handling for the\n_accept query parameter (which is used throughout WAI override the\nAccept header).\n\n* Add Headers\n\nWAI Middleware for adding arbitrary headers to an HTTP request.\n\n* Clean Path\n\nClean a request path to a canonical form.\n\n* GZip Compression\n\nNegotiate HTTP payload gzip compression.\n\n* HTTP Basic Authentication\n\nWAI Basic Authentication Middleware which uses Authorization header.\n\n* JSONP\n\n\\\"JSON with Padding\\\" middleware. Automatic wrapping of JSON\nresponses to convert into JSONP.\n\n* Method Override / Post\n\nAllows overriding of the HTTP request method via the _method query string\nparameter.\n\n* Request Logging\n\nRequest logging middleware for development and production environments\n\n* Request Rewrite\n\nRewrite request path info based on a custom conversion rules.\n\n* Stream Files\n\nConvert ResponseFile type responses into ResponseStream type.\n\n* Virtual Host\n\nRedirect incoming requests to a new host based on custom rules.\n\n\nAPI docs and the README are available at <http://www.stackage.org/package/wai-extra>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
          (hsPkgs."wai-logger" or (buildDepError "wai-logger"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."void" or (buildDepError "void"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."word8" or (buildDepError "word8"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
          (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
          (hsPkgs."cookie" or (buildDepError "cookie"))
          (hsPkgs."vault" or (buildDepError "vault"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."iproute" or (buildDepError "iproute"))
          (hsPkgs."http2" or (buildDepError "http2"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"));
        };
      exes = {
        "example" = {
          depends = (pkgs.lib).optionals (flags.build-example) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."cookie" or (buildDepError "cookie"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."http2" or (buildDepError "http2"))
            ];
          };
        };
      };
    }