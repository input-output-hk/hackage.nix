{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "ghci-websockets"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2019 Jann Mueller";
      maintainer = "Jann Müller (j.mueller.11@alumni.ucl.ac.uk)";
      author = "Jann Müller";
      homepage = "https://github.com/j-mueller/ghci-websockets";
      url = "";
      synopsis = "A websocket server that survives GHCi reloads";
      description = "A websocket server that survives GHCi reloads - use your browser to visualise results from the REPL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."foreign-store" or ((hsPkgs.pkgs-errors).buildDepError "foreign-store"))
          (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."wai-app-static" or ((hsPkgs.pkgs-errors).buildDepError "wai-app-static"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          ];
        buildable = true;
        };
      };
    }