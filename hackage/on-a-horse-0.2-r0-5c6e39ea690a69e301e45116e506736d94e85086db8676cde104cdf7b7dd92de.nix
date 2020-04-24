{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "on-a-horse"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jason@on-a-horse.org";
      author = "Jason Hart Priestley";
      homepage = "http://haskell.on-a-horse.org";
      url = "";
      synopsis = "\"Haskell on a Horse\" - A combinatorial web framework";
      description = "Please read the introduction at on-a-horse.org";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."hamlet" or ((hsPkgs.pkgs-errors).buildDepError "hamlet"))
          (hsPkgs."hack" or ((hsPkgs.pkgs-errors).buildDepError "hack"))
          (hsPkgs."hack-handler-evhttp" or ((hsPkgs.pkgs-errors).buildDepError "hack-handler-evhttp"))
          (hsPkgs."hack-contrib" or ((hsPkgs.pkgs-errors).buildDepError "hack-contrib"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."arrows" or ((hsPkgs.pkgs-errors).buildDepError "arrows"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }