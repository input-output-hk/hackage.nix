{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = { name = "qtah-examples"; version = "0.6.0"; };
      license = "LGPL-3.0-only";
      copyright = "Copyright 2015-2019 The Qtah Authors.";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/qtah";
      url = "";
      synopsis = "Example programs for Qtah Qt bindings";
      description = "Qtah is a set of Qt bindings for Haskell.  This package contains example\nprograms to demonstrate use of the bindings.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "qtah-examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hoppy-runtime" or ((hsPkgs.pkgs-errors).buildDepError "hoppy-runtime"))
            (hsPkgs."qtah-qt5" or ((hsPkgs.pkgs-errors).buildDepError "qtah-qt5"))
            ];
          buildable = true;
          };
        };
      };
    }