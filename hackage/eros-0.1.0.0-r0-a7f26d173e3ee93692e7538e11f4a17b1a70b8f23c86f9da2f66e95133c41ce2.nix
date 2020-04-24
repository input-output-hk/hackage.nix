{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "eros"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014, Peter Harpending.";
      maintainer = "Peter Harpending <pharpend2@gmail.com>";
      author = "Peter Harpending";
      homepage = "https://eros.valkyrian.com/";
      url = "";
      synopsis = "A text censorship library.";
      description = "A Haskell library for censoring text, using\n<http://contentfilter.futuragts.com/phraselists/ DansGuardian phraselists>.\nI converted the phraselists into JSON. You can view the converted phraselists\n<https://github.com/pharpend/eros/tree/master/res/phraselists-pretty here>.\nThere exist compressed versions, for use within your code. You can see the\ncompressed versions\n<https://github.com/pharpend/eros/tree/master/res/phraselists-ugly here>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test-phrase" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."eros" or ((hsPkgs.pkgs-errors).buildDepError "eros"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }