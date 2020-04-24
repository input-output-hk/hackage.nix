{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test-hlint = false; test-doc-coverage = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "keera-hails-mvc-environment-gtk";
        version = "0.5.0";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "support@keera.co.uk";
      author = "Ivan Perez";
      homepage = "http://www.keera.co.uk/blog/community/";
      url = "";
      synopsis = "Haskell on Gtk rails - Gtk-based global environment for MVC applications";
      description = "Keera Hails is a rapid application development system.\n\nThe idea behind Hails is that you should be able to build cross platform\napplications with minimal effort, very quickly, and the result should be easy\nto maintain.\n\nThis package defines an environment that combines a model and a view, where\nthe latter is implemented using GTK+. Users of this package can install\nadditional conditions that keep both in sync using keera-hails-reactivevalues\nto define such conditions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."keera-hails-mvc-model-protectedmodel" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-model-protectedmodel"))
          (hsPkgs."keera-hails-mvc-view" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-view"))
          (hsPkgs."keera-hails-mvc-view-gtk" or ((hsPkgs.pkgs-errors).buildDepError "keera-hails-mvc-view-gtk"))
          ];
        buildable = true;
        };
      tests = {
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hlint" or ((hsPkgs.pkgs-errors).buildDepError "hlint"))
            ];
          buildable = if !flags.test-hlint then false else true;
          };
        "haddock-coverage" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doc-coverage)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            ];
          buildable = if !flags.test-doc-coverage then false else true;
          };
        };
      };
    }