{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "distributed-process-p2p"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Alexander Bondarenko";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "https://bitbucket.org/dpwiz/distributed-process-p2p/";
      url = "";
      synopsis = "Peer-to-peer node discovery for Cloud Haskell";
      description = "Bootstraps a peer-to-peer connection network from a set of known hosts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."distributed-process" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process"))
          (hsPkgs."network-transport" or ((hsPkgs.pkgs-errors).buildDepError "network-transport"))
          (hsPkgs."network-transport-tcp" or ((hsPkgs.pkgs-errors).buildDepError "network-transport-tcp"))
          ];
        buildable = true;
        };
      exes = {
        "jollycloud" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."distributed-process" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process"))
            (hsPkgs."distributed-process-p2p" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process-p2p"))
            ];
          buildable = true;
          };
        };
      };
    }