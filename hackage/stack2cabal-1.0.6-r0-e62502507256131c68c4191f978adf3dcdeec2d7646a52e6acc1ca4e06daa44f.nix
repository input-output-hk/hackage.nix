{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { ghcflags = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "stack2cabal"; version = "1.0.6"; };
      license = "GPL-3.0-or-later";
      copyright = "2018 Tseen She";
      maintainer = "Tseen She";
      author = "Tseen She";
      homepage = "";
      url = "";
      synopsis = "Convert stack projects to cabal.project + cabal.project.freeze";
      description = "Convert @stack.yaml@ \\/ @package.yaml@ to @cabal.project@ \\/ @cabal.project.freeze@\\/ @*.cabal@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hpack" or ((hsPkgs.pkgs-errors).buildDepError "hpack"))
          (hsPkgs."HsYAML" or ((hsPkgs.pkgs-errors).buildDepError "HsYAML"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ] ++ (pkgs.lib).optional (flags.ghcflags) (hsPkgs."ghcflags" or ((hsPkgs.pkgs-errors).buildDepError "ghcflags"));
        build-tools = (pkgs.lib).optional (flags.ghcflags) (hsPkgs.buildPackages.hsinspect or (pkgs.buildPackages.hsinspect or ((hsPkgs.pkgs-errors).buildToolDepError "hsinspect")));
        buildable = true;
        };
      exes = {
        "stack2cabal" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hpack" or ((hsPkgs.pkgs-errors).buildDepError "hpack"))
            (hsPkgs."HsYAML" or ((hsPkgs.pkgs-errors).buildDepError "HsYAML"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."stack2cabal" or ((hsPkgs.pkgs-errors).buildDepError "stack2cabal"))
            ] ++ (pkgs.lib).optional (flags.ghcflags) (hsPkgs."ghcflags" or ((hsPkgs.pkgs-errors).buildDepError "ghcflags"));
          build-tools = (pkgs.lib).optional (flags.ghcflags) (hsPkgs.buildPackages.hsinspect or (pkgs.buildPackages.hsinspect or ((hsPkgs.pkgs-errors).buildToolDepError "hsinspect")));
          buildable = true;
          };
        };
      };
    }