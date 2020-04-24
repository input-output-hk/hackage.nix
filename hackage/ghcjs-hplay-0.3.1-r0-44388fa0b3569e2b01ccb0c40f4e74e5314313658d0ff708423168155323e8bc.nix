{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ghcjs-hplay"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gomez Corona";
      homepage = "https://github.com/agocorona/ghcjs-hplay";
      url = "";
      synopsis = "client-side Web EDSL for transient nodes running in the Web browser";
      description = "client-side haskell framework that compiles to javascript with the ghcjs compiler and run over transient. See homepage";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if compiler.isGhcjs && (compiler.version).ge "0.1"
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."transient" or ((hsPkgs.pkgs-errors).buildDepError "transient"))
            (hsPkgs."transient-universe" or ((hsPkgs.pkgs-errors).buildDepError "transient-universe"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."ghcjs-perch" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-perch"))
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."transient" or ((hsPkgs.pkgs-errors).buildDepError "transient"))
            (hsPkgs."transient-universe" or ((hsPkgs.pkgs-errors).buildDepError "transient-universe"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."ghcjs-perch" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-perch"))
            ];
        buildable = true;
        };
      };
    }