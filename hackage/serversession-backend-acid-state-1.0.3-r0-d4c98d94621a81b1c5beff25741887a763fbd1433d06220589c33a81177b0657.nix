{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "serversession-backend-acid-state";
        version = "1.0.3";
        };
      license = "MIT";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa <felipe.lessa@gmail.com>";
      homepage = "https://github.com/yesodweb/serversession";
      url = "";
      synopsis = "Storage backend for serversession using acid-state.";
      description = "API docs and the README are available at <http://www.stackage.org/package/serversession-backend-acid-state>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."acid-state" or ((hsPkgs.pkgs-errors).buildDepError "acid-state"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."safecopy" or ((hsPkgs.pkgs-errors).buildDepError "safecopy"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."serversession" or ((hsPkgs.pkgs-errors).buildDepError "serversession"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."acid-state" or ((hsPkgs.pkgs-errors).buildDepError "acid-state"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."safecopy" or ((hsPkgs.pkgs-errors).buildDepError "safecopy"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."serversession" or ((hsPkgs.pkgs-errors).buildDepError "serversession"))
            (hsPkgs."serversession-backend-acid-state" or ((hsPkgs.pkgs-errors).buildDepError "serversession-backend-acid-state"))
            ];
          buildable = true;
          };
        };
      };
    }