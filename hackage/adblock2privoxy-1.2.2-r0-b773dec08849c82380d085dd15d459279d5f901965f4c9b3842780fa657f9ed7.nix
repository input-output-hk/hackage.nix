{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "adblock2privoxy"; version = "1.2.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Alexey Zubritsky";
      author = "Alexey Zubritsky";
      homepage = "https://projects.zubr.me/wiki/adblock2privoxy";
      url = "";
      synopsis = "Convert adblock config files to privoxy format";
      description = "[AdBlock Plus] browser plugin has great block list files provided by big community,\nbut it is client software and cannot work on a server as proxy.\n\n[Privoxy] proxy has good potential to block ads at server side,\nbut it experiences acute shortage of updated block lists.\n\nThis software converts adblock lists to privoxy config files format.\n\nAlmost all adblock features are supported including\n\n* block/unblock requests (on privoxy)\n\nall syntax features are supported except for regex templates matching host name\n\n* hide/unhide page elements (via CSS)\n\nall syntax features are supported\n\n* all block request options except for outdated ones:\n\nSupported: script, image, stylesheet, object, xmlhttprequest, object-subrequest, subdocument,\ndocument, elemhide, other, popup, third-party, domain=..., match-case, donottrack\n\nUnsupported: collapse, background, xbl, ping and dtd";
      buildType = "Make";
      };
    components = {
      exes = {
        "adblock2privoxy" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."parsec-permutation" or ((hsPkgs.pkgs-errors).buildDepError "parsec-permutation"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }