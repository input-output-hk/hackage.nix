{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "CMQ"; version = "0.0.12"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 cmq authors";
      maintainer = "J.Fritsch@cs.cardiff.ac.uk";
      author = "Joerg Fritsch";
      homepage = "http://github.com/viloocity/cmq/";
      url = "";
      synopsis = "cwmwl udp message queue";
      description = "CMQ is a lightweight message queue using the UDP protocol as transport protocol. It trades guarantees, consistency mechanisms, (shared) state and transactions for robustness, scalability and performance. CMQ fares especially well in modern Layer 2 switches in data center networks, as well as in the presence of errors.\nThis library provides CMQ version = 0.0.12";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."iproute" or ((hsPkgs.pkgs-errors).buildDepError "iproute"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."PSQueue" or ((hsPkgs.pkgs-errors).buildDepError "PSQueue"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }