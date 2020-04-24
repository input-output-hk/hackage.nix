{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "conduit-network-stream"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mail@nils.cc";
      author = "Nils Schweinsberg <mail@nils.cc>";
      homepage = "";
      url = "";
      synopsis = "A base layer for network protocols using Conduits";
      description = "A base layer for network protocols using Conduits";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."network-conduit" or ((hsPkgs.pkgs-errors).buildDepError "network-conduit"))
          ];
        buildable = true;
        };
      };
    }