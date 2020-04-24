{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "ghc-events"; version = "0.9.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Donnie Jones <donnie@darthik.com>,\nSimon Marlow <marlowsd@gmail.com>,\nPaul Bone <pbone@csse.unimelb.edu.au>,\nMischa Dieterle <dieterle@mathematik.uni-marburg.de>,\nThomas Horstmeyer <horstmey@mathematik.uni-marburg.de>,\nDuncan Coutts <duncan@well-typed.com>,\nNicolas Wu <nick@well-typed.com>,\nJost Berthold <berthold@diku.dk>\nMikolaj Konarski <mikolaj@well-typed.com>\nKarolis Velicka <karolis.velicka@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Library and tool for parsing .eventlog files from GHC";
      description = "Parses .eventlog files emitted by GHC 6.12.1 and later.\nIncludes the ghc-events tool permitting, in particular,\nto dump an event log file as text.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "ghc-events" = {
          depends = [
            (hsPkgs."ghc-events" or ((hsPkgs.pkgs-errors).buildDepError "ghc-events"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-versions" = {
          depends = [
            (hsPkgs."ghc-events" or ((hsPkgs.pkgs-errors).buildDepError "ghc-events"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "write-merge" = {
          depends = [
            (hsPkgs."ghc-events" or ((hsPkgs.pkgs-errors).buildDepError "ghc-events"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = false;
          };
        };
      };
    }