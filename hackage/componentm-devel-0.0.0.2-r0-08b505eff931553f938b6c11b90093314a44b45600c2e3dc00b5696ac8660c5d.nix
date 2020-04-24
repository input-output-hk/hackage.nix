{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "componentm-devel"; version = "0.0.0.2"; };
      license = "MIT";
      copyright = "© 2017-current Roman Gonzalez";
      maintainer = "open-source@roman-gonzalez.info";
      author = "Roman Gonzalez";
      homepage = "https://github.com/roman/Haskell-componentm#readme";
      url = "";
      synopsis = "Easy REPL driven development using ComponentM";
      description = "This library enhances the componentm with auto-reloading\ncapabilites for your application, allowing to ensure cleanup\nof resources when doing REPL driven development, or when using\nghcid";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."componentm" or ((hsPkgs.pkgs-errors).buildDepError "componentm"))
          (hsPkgs."foreign-store" or ((hsPkgs.pkgs-errors).buildDepError "foreign-store"))
          (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
          (hsPkgs."teardown" or ((hsPkgs.pkgs-errors).buildDepError "teardown"))
          ];
        buildable = true;
        };
      };
    }