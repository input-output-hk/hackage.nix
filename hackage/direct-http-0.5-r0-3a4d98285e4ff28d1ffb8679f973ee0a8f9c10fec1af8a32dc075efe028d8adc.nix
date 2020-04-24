{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "direct-http"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 Irene Knapp";
      maintainer = "\"Irene Knapp\" <ireney.knapp@gmail.com>";
      author = "Irene Knapp";
      homepage = "http://ireneknapp.com/software/";
      url = "";
      synopsis = "Native webserver that acts as a library.";
      description = "This package is a native implementation of the HTTP and HTTPS protocols.\nIt lives as a library, exporting an interface reminiscent of CGI or FastCGI.\nThus policy on how namespace is mapped to files and/or scripts is entirely up\nto the client application.\n\nThis package is partially compatible with direct-fastcgi by the same\nauthor, but is intended more by way of a replacement for it than a companion\nto it, and makes several design decisions differently.  The biggest is the\nuse of MonadControlBase for exceptions.\n\nVersion 0.5: This preliminary release is a preview to gauge community\ninterest.  Not even all major features are implemented; things that exist\nonly as stubs include encryption, compression, chunking, and reading back\ncookies.  Nonetheless it may be useful if run behind a reverse proxy that\nprovides the missing features transparently, such as Apache.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."direct-daemonize" or ((hsPkgs.pkgs-errors).buildDepError "direct-daemonize"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          ];
        buildable = true;
        };
      };
    }