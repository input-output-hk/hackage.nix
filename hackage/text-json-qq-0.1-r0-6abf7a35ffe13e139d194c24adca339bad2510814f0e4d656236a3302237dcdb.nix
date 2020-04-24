{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "text-json-qq"; version = "0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "oscar.finnsson@gmail.com";
      author = "Oscar Finnsson";
      homepage = "http://github.com/finnsson/text-json-qq";
      url = "";
      synopsis = "Json Quasiquatation for Haskell.";
      description = "@text-json-qq@ provides json quasiquatation for Haskell.\n\nThis package expose the function @jsonQQ@ that compile time converts json code into a @Text.JSON.JSValue@.\n@jsonQQ@ got the signature\n\n> jsonQQ :: QuasiQuoter.\n\nConsult documentation in the module @Text.JSON.QQ@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }