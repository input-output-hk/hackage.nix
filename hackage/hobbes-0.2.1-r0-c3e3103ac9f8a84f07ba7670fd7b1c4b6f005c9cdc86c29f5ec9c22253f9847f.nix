{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hobbes"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jhickner@gmail.com";
      author = "Jason Hickner";
      homepage = "http://github.com/jhickner/hobbes";
      url = "";
      synopsis = "A small file watcher for OSX";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hobbes" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."filemanip" or ((hsPkgs.pkgs-errors).buildDepError "filemanip"))
            (hsPkgs."hfsevents" or ((hsPkgs.pkgs-errors).buildDepError "hfsevents"))
            ];
          buildable = true;
          };
        };
      };
    }