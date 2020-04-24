{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lio-simple"; version = "0.0.2.0"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "hails@scs.stanford.edu";
      author = "Hails team";
      homepage = "http://simple.cx";
      url = "";
      synopsis = "LIO support for the Simple web framework";
      description = "\\lio-simple\\ adds LIO support for the \\Simple\\ \\\"framework-less\\\"\nweb framework.  \\Simple\\ is minimalist, providing a lightweight base\n- the most basic \\Simple\\ app is little more than a WAI\n`Application` with some routing logic. Everything else (e.g.\nauthentication, controllers, persistence, caching etc\\') is provided\nin composable units, so you can include only the ones you need in\nyour app, and easily replace with your own components.\nLIO is an information flow control library that lets you enforce\nvarious security policies, including mandatory and discretionary\naccess control.\n\nTo get started, create an app skeleton with the `lio-simple` utility:\n\n@\n\$ cabal install lio-simple\n\$ lio-simple my_app_name\n\$ cd my_app_name\n\$ cabal run\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."lio" or ((hsPkgs.pkgs-errors).buildDepError "lio"))
          (hsPkgs."simple" or ((hsPkgs.pkgs-errors).buildDepError "simple"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."simple-templates" or ((hsPkgs.pkgs-errors).buildDepError "simple-templates"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = {
        "lio-simple" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."simple-templates" or ((hsPkgs.pkgs-errors).buildDepError "simple-templates"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }