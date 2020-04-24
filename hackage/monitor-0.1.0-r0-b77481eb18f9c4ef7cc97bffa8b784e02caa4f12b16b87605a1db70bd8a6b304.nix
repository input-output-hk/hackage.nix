{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "monitor"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2013 Martin Stensgård";
      maintainer = "mastensg@ping.uio.no";
      author = "Martin Stensgård";
      homepage = "";
      url = "";
      synopsis = "Do things when files change.";
      description = "monitor waits for files to change, then runs system commands.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "monitor" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hinotify" or ((hsPkgs.pkgs-errors).buildDepError "hinotify"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }