{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "iyql"; version = "0.0.6"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Diego Souza <dsouza+iyql at bitforest.org>";
      author = "Diego Souza <dsouza+iyql at bitforest.org>";
      homepage = "";
      url = "";
      synopsis = "CLI (command line interface) to YQL";
      description = "Similar to popular database frontend interfaces like sqlite3, this\nproject provides a full featured CLI for YQL.\nIt extends YQL introducing the concept of of location functions.\nThese have the same concept of YQL functions except they are\nintercepted by the program itself and executed locally. For\ninstance, changing the format to json or turning diagnostics on\nare examples of such functions.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "iyql" = {
          depends = [
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hoauth" or ((hsPkgs.pkgs-errors).buildDepError "hoauth"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            ];
          buildable = true;
          };
        };
      };
    }