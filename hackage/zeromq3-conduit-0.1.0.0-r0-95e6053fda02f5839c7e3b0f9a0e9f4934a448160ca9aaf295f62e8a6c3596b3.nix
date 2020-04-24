{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "zeromq3-conduit"; version = "0.1.0.0"; };
      license = "LGPL-2.1-only";
      copyright = "Copyright (c) 2012, Nicolas Trangez";
      maintainer = "ikke@nicolast.be";
      author = "Nicolas Trangez";
      homepage = "https://github.com/NicolasT/zeromq3-conduit";
      url = "";
      synopsis = "Conduit bindings for zeromq3-haskell";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."zeromq3-haskell" or ((hsPkgs.pkgs-errors).buildDepError "zeromq3-haskell"))
          ];
        buildable = true;
        };
      };
    }