{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "sphinx"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Tupil";
      maintainer = "Chris Eidhof <ce+sphinx@tupil.com>";
      author = "Tupil";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to the Sphinx full-text searching deamon.";
      description = "Haskell bindings to the Sphinx full-text searching deamon. This\nmodule is heavily inspired by the php and python client.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          ];
        buildable = true;
        };
      };
    }