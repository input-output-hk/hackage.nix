{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "simple-session";
          version = "0.8.1.0";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "amit@amitlevy.com";
        author = "Amit Aryeh Levy";
        homepage = "http://simple.cx";
        url = "";
        synopsis = "Cookie-based session management for the Simple web framework";
        description = "Adds cookie-based session management to simple 'Controller's. To add to an\napplication, declare the Controller setting\\'s type an instance of\n'HasSession', and wrap routes with 'withSession'. For example:\n\n> data AppSettings = ...\n>\n> instance HasSession AppSettings where\n>   ...\n\n> controllerApp settings \$ withSessions \$ do\n>   routeName \\\"posts\\\" \$ ...\n\nThen, in your controllers you can seemlessly get and set keys from the\nsession:\n\n> get \"/profile\" \$ do\n>   muserId <- sessionLookup \"current_user_id\"\n>   case muserIf of\n>     Nothing -> respond \$ redirectTo \"/login\"\n>     Just userId -> [handle request]";
        buildType = "Simple";
      };
      components = {
        simple-session = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.cookie
            hsPkgs.cryptohash
            hsPkgs.byteable
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.http-types
            hsPkgs.simple
            hsPkgs.transformers
            hsPkgs.wai
          ];
        };
      };
    }