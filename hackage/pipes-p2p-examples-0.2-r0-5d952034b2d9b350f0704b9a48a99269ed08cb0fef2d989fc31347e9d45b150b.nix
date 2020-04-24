{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pipes-p2p-examples"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "j@dannynavarro.net";
      author = "Danny Navarro";
      homepage = "https://github.com/jdnavarro/pipes-p2p-examples";
      url = "";
      synopsis = "Examples using pipes-p2p";
      description = "For now this package includes a dummy P2P network where nodes just exchange\ntheir network addresses. This can be used as boilerplate code for other P2P\nnetworks. Future releases may contain more examples.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "address-exchanger" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
            (hsPkgs."network-simple-sockaddr" or ((hsPkgs.pkgs-errors).buildDepError "network-simple-sockaddr"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."pipes-network" or ((hsPkgs.pkgs-errors).buildDepError "pipes-network"))
            (hsPkgs."pipes-p2p" or ((hsPkgs.pkgs-errors).buildDepError "pipes-p2p"))
            ];
          buildable = true;
          };
        };
      };
    }