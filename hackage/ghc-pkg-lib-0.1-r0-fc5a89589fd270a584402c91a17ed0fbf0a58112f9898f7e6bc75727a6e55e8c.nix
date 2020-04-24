{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ghc-pkg-lib"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Thiago Arrais 2009";
      maintainer = "jp@moresmau.fr";
      author = "Thiago Arrais, JP Moresmau";
      homepage = "https://github.com/JPMoresmau/ghc-pkg-lib";
      url = "";
      synopsis = "Provide library support for ghc-pkg information";
      description = "A library that lists the installed packages in a given sandbox and/or in the global and user package databases";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          ];
        buildable = true;
        };
      };
    }