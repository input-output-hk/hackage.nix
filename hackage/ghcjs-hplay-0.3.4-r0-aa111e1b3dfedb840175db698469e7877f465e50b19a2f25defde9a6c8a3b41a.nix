{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ghcjs-hplay"; version = "0.3.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto Gomez Corona";
      homepage = "https://github.com/agocorona/ghcjs-hplay";
      url = "";
      synopsis = "Client-side web EDSL for transient nodes running in the web browser";
      description = "Client-side Haskell framework that compiles to javascript with the GHCJS compiler and run over Transient.  See homepage";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transient" or ((hsPkgs.pkgs-errors).buildDepError "transient"))
          (hsPkgs."transient-universe" or ((hsPkgs.pkgs-errors).buildDepError "transient-universe"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."ghcjs-perch" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-perch"))
          ] ++ (pkgs.lib).optional (compiler.isGhcjs && (compiler.version).ge "0.1") (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"));
        buildable = true;
        };
      };
    }