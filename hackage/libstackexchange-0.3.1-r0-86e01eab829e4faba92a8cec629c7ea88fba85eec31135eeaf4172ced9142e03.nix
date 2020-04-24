{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { enable-examples = false; enable-doctests = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "libstackexchange"; version = "0.3.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "matvey.aksenov@gmail.com";
      author = "Matvey Aksenov, Dmitry Malikov";
      homepage = "https://github.com/supki/libstackexchange";
      url = "";
      synopsis = "StackExchange API interface";
      description = "Provides interface for StackExchange v2.1 API";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "rep-watcher" = {
          depends = [
            (hsPkgs."aeson-lens" or ((hsPkgs.pkgs-errors).buildDepError "aeson-lens"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."libstackexchange" or ((hsPkgs.pkgs-errors).buildDepError "libstackexchange"))
            ];
          buildable = if !flags.enable-examples then false else true;
          };
        "badges-watcher" = {
          depends = [
            (hsPkgs."aeson-lens" or ((hsPkgs.pkgs-errors).buildDepError "aeson-lens"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."libstackexchange" or ((hsPkgs.pkgs-errors).buildDepError "libstackexchange"))
            ];
          buildable = if !flags.enable-examples then false else true;
          };
        "server-side-authentication" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."happstack-server" or ((hsPkgs.pkgs-errors).buildDepError "happstack-server"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."libstackexchange" or ((hsPkgs.pkgs-errors).buildDepError "libstackexchange"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = if !flags.enable-examples then false else true;
          };
        };
      tests = {
        "api" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
            (hsPkgs."libstackexchange" or ((hsPkgs.pkgs-errors).buildDepError "libstackexchange"))
            ];
          buildable = if !flags.enable-doctests then false else true;
          };
        };
      };
    }