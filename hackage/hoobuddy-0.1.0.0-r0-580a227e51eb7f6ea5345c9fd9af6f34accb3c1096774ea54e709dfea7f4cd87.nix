{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hoobuddy"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "tobias.pflug@gmail.com";
      author = "tobias pflug";
      homepage = "http://github.com/gilligan/hoobuddy";
      url = "";
      synopsis = "Simple tool for fetching and merging hoogle data";
      description = "Hoobuddy parses the specified cabal project file and invokes hoogle to fetch databases for\nall specified dependencies merging the result into a `default.hoo` file in the current directory.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hoobuddy" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            (hsPkgs."hoogle" or ((hsPkgs.pkgs-errors).buildDepError "hoogle"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }