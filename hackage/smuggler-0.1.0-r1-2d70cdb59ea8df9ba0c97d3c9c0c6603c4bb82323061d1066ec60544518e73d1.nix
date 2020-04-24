{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "smuggler"; version = "0.1.0"; };
      license = "MPL-2.0";
      copyright = "2018-2019 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Dmitrii Kovanikov, Veronika Romashkina";
      homepage = "https://github.com/kowainik/smuggler";
      url = "";
      synopsis = "GHC Source Plugin that helps to manage imports";
      description = "== Usage\n\nAdd @smuggler@ to the dependencies of your project.\n\nThen add the following options: @-fplugin=Smuggler.Plugin@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."ghc-exactprint" or ((hsPkgs.pkgs-errors).buildDepError "ghc-exactprint"))
          (hsPkgs."hash-store" or ((hsPkgs.pkgs-errors).buildDepError "hash-store"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "play-smuggler" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."smuggler" or ((hsPkgs.pkgs-errors).buildDepError "smuggler"))
            ];
          buildable = true;
          };
        };
      tests = {
        "smuggler-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."smuggler" or ((hsPkgs.pkgs-errors).buildDepError "smuggler"))
            ];
          buildable = true;
          };
        };
      };
    }