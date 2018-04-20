{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-extra";
          version = "3.0.16.0";
        };
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
        wai-extra = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.wai
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.network
            hsPkgs.directory
            hsPkgs.transformers
            hsPkgs.blaze-builder
            hsPkgs.http-types
            hsPkgs.text
            hsPkgs.case-insensitive
            hsPkgs.data-default-class
            hsPkgs.fast-logger
            hsPkgs.wai-logger
            hsPkgs.ansi-terminal
            hsPkgs.resourcet
            hsPkgs.void
            hsPkgs.stringsearch
            hsPkgs.containers
            hsPkgs.base64-bytestring
            hsPkgs.word8
            hsPkgs.lifted-base
            hsPkgs.deepseq
            hsPkgs.streaming-commons
            hsPkgs.unix-compat
            hsPkgs.cookie
            hsPkgs.vault
            hsPkgs.zlib
            hsPkgs.aeson
            hsPkgs.iproute
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.wai-extra
              hsPkgs.wai
              hsPkgs.hspec
              hsPkgs.transformers
              hsPkgs.fast-logger
              hsPkgs.http-types
              hsPkgs.zlib
              hsPkgs.text
              hsPkgs.resourcet
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.blaze-builder
              hsPkgs.cookie
              hsPkgs.time
              hsPkgs.case-insensitive
            ];
          };
        };
      };
    }