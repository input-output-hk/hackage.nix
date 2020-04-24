{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      darcs28 = true;
      highlightingkate = true;
      highlighter = false;
      closing = true;
      ssh = true;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "darcsden"; version = "1.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alex Suraci <suraci.alex@gmail.com>, Simon Michael <simon@joyful.com>";
      author = "Alex Suraci <suraci.alex@gmail.com>";
      homepage = "http://hackage.haskell.org/package/darcsden";
      url = "";
      synopsis = "Darcs repository UI and hosting/collaboration app.";
      description = "A web application and SSH server for browsing and hosting darcs\nrepositories and collaborating with others.\n\nInstallation: http://hub.darcs.net/simon/darcsden-1.0/README\n\n1.0 release notes: http://hub.darcs.net/simon/darcsden-1.0/ANNOUNCE.md\n\n1.0.1 changes:\n\n* cabal file now includes the required highlightingkate/highlighter build flags\n\n* cabal file points to a darcsden 1.0 source repo";
      buildType = "Simple";
      };
    components = {
      exes = {
        "darcsden" = {
          depends = ((([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base64-string" or ((hsPkgs.pkgs-errors).buildDepError "base64-string"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."CouchDB" or ((hsPkgs.pkgs-errors).buildDepError "CouchDB"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."harp" or ((hsPkgs.pkgs-errors).buildDepError "harp"))
            (hsPkgs."hashed-storage" or ((hsPkgs.pkgs-errors).buildDepError "hashed-storage"))
            (hsPkgs."hsp" or ((hsPkgs.pkgs-errors).buildDepError "hsp"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
            (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."redis" or ((hsPkgs.pkgs-errors).buildDepError "redis"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."SHA" or ((hsPkgs.pkgs-errors).buildDepError "SHA"))
            (hsPkgs."snap-core" or ((hsPkgs.pkgs-errors).buildDepError "snap-core"))
            (hsPkgs."snap-server" or ((hsPkgs.pkgs-errors).buildDepError "snap-server"))
            (hsPkgs."system-uuid" or ((hsPkgs.pkgs-errors).buildDepError "system-uuid"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
            (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
            ] ++ [
            (hsPkgs."darcs" or ((hsPkgs.pkgs-errors).buildDepError "darcs"))
            ]) ++ (pkgs.lib).optional (flags.highlightingkate) (hsPkgs."highlighting-kate" or ((hsPkgs.pkgs-errors).buildDepError "highlighting-kate"))) ++ (pkgs.lib).optional (flags.highlighter) (hsPkgs."highlighter" or ((hsPkgs.pkgs-errors).buildDepError "highlighter"))) ++ (pkgs.lib).optional (flags.ssh) (hsPkgs."ssh" or ((hsPkgs.pkgs-errors).buildDepError "ssh"));
          buildable = true;
          };
        "darcsden-ssh" = {
          depends = [
            (hsPkgs."darcs" or ((hsPkgs.pkgs-errors).buildDepError "darcs"))
            ] ++ (pkgs.lib).optional (flags.ssh) (hsPkgs."ssh" or ((hsPkgs.pkgs-errors).buildDepError "ssh"));
          buildable = true;
          };
        "darcsden-post-hook" = {
          depends = [
            (hsPkgs."darcs" or ((hsPkgs.pkgs-errors).buildDepError "darcs"))
            ] ++ (pkgs.lib).optional (flags.closing) (hsPkgs."pcre-light" or ((hsPkgs.pkgs-errors).buildDepError "pcre-light"));
          buildable = true;
          };
        };
      };
    }