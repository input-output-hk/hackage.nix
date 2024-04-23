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
    flags = {
      darcs28 = true;
      highlighting = true;
      closing = true;
      ssh = true;
    };
    package = {
      specVersion = "1.6";
      identifier = { name = "darcsden"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alex Suraci <suraci.alex@gmail.com>, Simon Michael <simon@joyful.com>";
      author = "Alex Suraci <suraci.alex@gmail.com>";
      homepage = "http://hackage.haskell.org/package/darcsden";
      url = "";
      synopsis = "Darcs repository UI and hosting/collaboration app.";
      description = "A web application and SSH server for browsing and hosting darcs\nrepositories and collaborating with others.\n\nSee the README in the source repository for installation help.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "darcsden" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-string" or (errorHandler.buildDepError "base64-string"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."CouchDB" or (errorHandler.buildDepError "CouchDB"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."harp" or (errorHandler.buildDepError "harp"))
            (hsPkgs."hashed-storage" or (errorHandler.buildDepError "hashed-storage"))
            (hsPkgs."hsp" or (errorHandler.buildDepError "hsp"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."redis" or (errorHandler.buildDepError "redis"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
            (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
            (hsPkgs."system-uuid" or (errorHandler.buildDepError "system-uuid"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ] ++ [
            (hsPkgs."darcs" or (errorHandler.buildDepError "darcs"))
          ]) ++ pkgs.lib.optionals (flags.highlighting) [
            (hsPkgs."highlighter" or (errorHandler.buildDepError "highlighter"))
            (hsPkgs."highlighting-kate" or (errorHandler.buildDepError "highlighting-kate"))
          ]) ++ pkgs.lib.optional (flags.ssh) (hsPkgs."ssh" or (errorHandler.buildDepError "ssh"));
          buildable = true;
        };
        "darcsden-ssh" = {
          depends = [
            (hsPkgs."darcs" or (errorHandler.buildDepError "darcs"))
          ] ++ pkgs.lib.optional (flags.ssh) (hsPkgs."ssh" or (errorHandler.buildDepError "ssh"));
          buildable = true;
        };
        "darcsden-post-hook" = {
          depends = [
            (hsPkgs."darcs" or (errorHandler.buildDepError "darcs"))
          ] ++ pkgs.lib.optional (flags.closing) (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"));
          buildable = true;
        };
      };
    };
  }