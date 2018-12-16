{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "majordomo";
        version = "0.1.4";
      };
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
          (hsPkgs.base)
          (hsPkgs.zeromq-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.monad-loops)
          (hsPkgs.time)
          (hsPkgs.old-locale)
        ];
      };
      exes = {
        "mdp_client" = {
          depends = [
            (hsPkgs.majordomo)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.base)
          ];
        };
        "echoworker" = {
          depends = [
            (hsPkgs.majordomo)
            (hsPkgs.bytestring)
            (hsPkgs.threads)
            (hsPkgs.unix)
            (hsPkgs.base)
          ];
        };
      };
    };
  }