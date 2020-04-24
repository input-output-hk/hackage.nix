{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "qm-interpolated-string"; version = "0.2.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "Viacheslav Lotsmanov";
      maintainer = "Viacheslav Lotsmanov <lotsmanov89@gmail.com>";
      author = "Viacheslav Lotsmanov";
      homepage = "https://github.com/unclechu/haskell-qm-interpolated-string";
      url = "";
      synopsis = "Implementation of interpolated multiline strings";
      description = "Implementation of interpolated multiline strings\nthat ignores indentation and trailing whitespaces";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."qm-interpolated-string" or ((hsPkgs.pkgs-errors).buildDepError "qm-interpolated-string"))
            ];
          buildable = true;
          };
        };
      };
    }