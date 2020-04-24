{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hichi"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Sergei Trofimovich <slyfox@inbox.ru>";
      author = "Sergei Trofimovich <slyfox@inbox.ru>";
      homepage = "";
      url = "";
      synopsis = "haskell robot for IChat protocol";
      description = "haskell robot for IChat protocol";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hichi" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            ];
          buildable = true;
          };
        "test-rc4" = { buildable = if flags.test then true else false; };
        };
      };
    }