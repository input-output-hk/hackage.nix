{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "componentm"; version = "0.0.0.2"; };
      license = "MIT";
      copyright = "© 2017-current Roman Gonzalez";
      maintainer = "open-source@roman-gonzalez.info";
      author = "Roman Gonzalez";
      homepage = "https://github.com/roman/Haskell-componentm#readme";
      url = "";
      synopsis = "Monad for allocation and cleanup of application resources";
      description = "This library allows you to allocate resources with\nclean up strategies when initializing your application.\nIt then provides a Monadic interface to compose multiple\nresources without having to deal with cleanup operations\nexplicitely.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
          (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
          (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
          (hsPkgs."teardown" or ((hsPkgs.pkgs-errors).buildDepError "teardown"))
          ];
        buildable = true;
        };
      tests = {
        "componentm-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."componentm" or ((hsPkgs.pkgs-errors).buildDepError "componentm"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."teardown" or ((hsPkgs.pkgs-errors).buildDepError "teardown"))
            ];
          buildable = true;
          };
        };
      };
    }