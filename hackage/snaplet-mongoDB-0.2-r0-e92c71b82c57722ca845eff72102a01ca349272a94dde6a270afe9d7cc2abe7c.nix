{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "snaplet-mongoDB"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ciemniewski.kamil@gmail.com";
      author = "Kamil Ciemniewski";
      homepage = "";
      url = "";
      synopsis = "Snap Framework MongoDB support as Snaplet";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bson" or ((hsPkgs.pkgs-errors).buildDepError "bson"))
          (hsPkgs."compact-string-fix" or ((hsPkgs.pkgs-errors).buildDepError "compact-string-fix"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mongoDB" or ((hsPkgs.pkgs-errors).buildDepError "mongoDB"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."regular" or ((hsPkgs.pkgs-errors).buildDepError "regular"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."snap" or ((hsPkgs.pkgs-errors).buildDepError "snap"))
          (hsPkgs."snap-core" or ((hsPkgs.pkgs-errors).buildDepError "snap-core"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."MonadCatchIO-transformers" or ((hsPkgs.pkgs-errors).buildDepError "MonadCatchIO-transformers"))
          ];
        buildable = true;
        };
      };
    }