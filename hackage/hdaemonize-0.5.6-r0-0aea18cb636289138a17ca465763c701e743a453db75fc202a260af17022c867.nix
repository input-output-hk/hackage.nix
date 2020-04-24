{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hdaemonize"; version = "0.5.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeremy Bornstein <jeremy@jeremy.org>";
      author = "Anton Tayanovskyy, Fred Ross, Lana Black";
      homepage = "http://github.com/unprolix/hdaemonize";
      url = "";
      synopsis = "Library to handle the details of writing daemons for UNIX";
      description = "Provides functions that help writing better UNIX daemons,\ndaemonize and serviced/serviced': daemonize does what\na daemon should do (forking and closing descriptors),\nwhile serviced does that and more (syslog interface,\nPID file writing, start-stop-restart command line\nhandling, dropping privileges).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."hsyslog" or ((hsPkgs.pkgs-errors).buildDepError "hsyslog"))
          (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }