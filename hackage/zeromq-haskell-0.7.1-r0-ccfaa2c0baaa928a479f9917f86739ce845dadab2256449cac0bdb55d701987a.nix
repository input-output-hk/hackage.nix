{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = { name = "zeromq-haskell"; version = "0.7.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2011 zeromq-haskell authors";
      maintainer = "toralf.wittner@gmail.com";
      author = "Toralf Wittner";
      homepage = "http://github.com/twittner/zeromq-haskell/";
      url = "";
      synopsis = "bindings to zeromq";
      description = "Bindings to zeromq (http://zeromq.org)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = if system.isFreebsd
          then [
            (pkgs."zmq" or ((hsPkgs.pkgs-errors).sysDepError "zmq"))
            (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"))
            ]
          else [ (pkgs."zmq" or ((hsPkgs.pkgs-errors).sysDepError "zmq")) ];
        buildable = true;
        };
      };
    }