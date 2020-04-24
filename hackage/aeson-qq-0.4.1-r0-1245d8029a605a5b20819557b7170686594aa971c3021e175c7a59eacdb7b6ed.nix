{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "aeson-qq"; version = "0.4.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "oscar.finnsson@gmail.com";
      author = "Oscar Finnsson";
      homepage = "http://github.com/finnsson/aeson-qq";
      url = "";
      synopsis = "Json Quasiquatation for Haskell.";
      description = "@aeson-qq@ provides json quasiquatation for Haskell.\n\nThis package expose the function @aesonQQ@ that compile time converts json code into a @Data.Aeson.Value@.\n@aesonQQ@ got the signature\n\n> aesonQQ :: QuasiQuoter.\n\nConsult documentation in the module @Data.Aeson.QQ@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."json-qq" or ((hsPkgs.pkgs-errors).buildDepError "json-qq"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
          ];
        buildable = true;
        };
      };
    }