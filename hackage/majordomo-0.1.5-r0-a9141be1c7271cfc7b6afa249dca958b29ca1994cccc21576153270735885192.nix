{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "majordomo"; version = "0.1.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mark@ninjablocks.com, sean@ninjablocks.com";
      author = "Mark Wotton, Sean Seefried";
      homepage = "";
      url = "";
      synopsis = "Majordomo protocol for ZeroMQ";
      description = "The Majordomo Protocol (MDP) defines a reliable\nservice-oriented request-reply dialog between a\nset of client applications, a broker and a set of\nworker applications. MDP covers presence,\nheartbeating, and service-oriented request-reply\nprocessing. It originated from the Majordomo\npattern defined in Chapter 4 of the Guide.\nhttp://rfc.zeromq.org/spec:7";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."zeromq-haskell" or ((hsPkgs.pkgs-errors).buildDepError "zeromq-haskell"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          ];
        buildable = true;
        };
      exes = {
        "mdp_client" = {
          depends = [
            (hsPkgs."majordomo" or ((hsPkgs.pkgs-errors).buildDepError "majordomo"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "echoworker" = {
          depends = [
            (hsPkgs."majordomo" or ((hsPkgs.pkgs-errors).buildDepError "majordomo"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."threads" or ((hsPkgs.pkgs-errors).buildDepError "threads"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }