{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dynamic = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "mohws"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Simon Marlow, Bjorn Bringert";
      maintainer = "Henning Thielemann <webserver@henning-thielemann.de>";
      author = "Simon Marlow, Bjorn Bringert <bjorn@bringert.net>";
      homepage = "http://code.haskell.org/mohws/";
      url = "";
      synopsis = "Modular Haskell Web Server";
      description = "A web server with a module system and support for CGI.\nBased on Simon Marlow's original Haskell Web Server.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
          (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
          ];
        buildable = true;
        };
      exes = {
        "hws" = { buildable = true; };
        "hws-dyn" = {
          depends = (pkgs.lib).optional (flags.dynamic) (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"));
          buildable = if flags.dynamic then true else false;
          };
        };
      };
    }