{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "true-name"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "© 2014−2015 Liyang HU";
      maintainer = "true-name@liyang.hu";
      author = "Liyang HU";
      homepage = "https://github.com/liyang/true-name";
      url = "";
      synopsis = "Template Haskell hack to violate another module's abstractions";
      description = "<http://tvtropes.org/pmwiki/pmwiki.php/Main/IKnowYourTrueName Knowing a true name gives one power over its owner>.\n\nA Template Haskell hack to get unexported @Name@s―be they data\nconstructors, record fields or class methods―a slightly less unsafe way\nto violate another module's abstractions than @unsafeCoerce@.\n\nA few <https://github.com/liyang/true-name/blob/master/sanity.hs quick examples>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "sanity" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."true-name" or ((hsPkgs.pkgs-errors).buildDepError "true-name"))
            ];
          buildable = true;
          };
        };
      };
    }