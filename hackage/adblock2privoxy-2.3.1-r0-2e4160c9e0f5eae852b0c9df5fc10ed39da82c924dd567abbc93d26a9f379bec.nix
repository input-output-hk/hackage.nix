{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "adblock2privoxy"; version = "2.3.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Steven Thomas Smith <steve.t.smith@gmail.com>";
      author = "Alexey Zubritsky <adblock2privoxy@zubr.me>, Steven Thomas Smith <steve.t.smith@gmail.com>";
      homepage = "https://github.com/essandess/adblock2privoxy";
      url = "";
      synopsis = "Convert adblock config files to privoxy format";
      description = "AdBlock Plus browser plugin has great block list files provided by big community,\nbut it is client software and cannot work on a server as proxy.\n\nPrivoxy proxy has good potential to block ads at server side,\nbut it experiences acute shortage of updated block lists.\n\nThis software converts adblock lists to privoxy config files format.\n\nAlmost all adblock features are supported including\n\n* block/unblock requests (on privoxy)\n\nall syntax features are supported except for regex templates matching host name\n\n* hide/unhide page elements (via CSS)\n\nall syntax features are supported\n\n* all block request options except for outdated ones:\n\nSupported: script, image, stylesheet, object, xmlhttprequest, object-subrequest, subdocument,\ndocument, elemhide, other, popup, third-party, domain=..., match-case, donottrack\n\nUnsupported: collapse, background, xbl, ping and dtd";
      buildType = "Simple";
    };
    components = {
      exes = {
        "adblock2privoxy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."parsec-permutation" or (errorHandler.buildDepError "parsec-permutation"))
          ];
          buildable = true;
        };
      };
    };
  }