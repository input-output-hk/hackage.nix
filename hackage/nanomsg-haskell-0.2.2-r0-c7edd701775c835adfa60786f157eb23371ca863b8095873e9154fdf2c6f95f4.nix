{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "nanomsg-haskell"; version = "0.2.2"; };
      license = "MIT";
      copyright = "Copyright (c) 2013 Ivar Nymoen";
      maintainer = "<ivar.nymoen@gmail.com>";
      author = "Ivar Nymoen";
      homepage = "https://github.com/ivarnymoen/nanomsg-haskell";
      url = "";
      synopsis = "Bindings to the nanomsg library";
      description = "This is a Haskell binding for the nanomsg library: <http://nanomsg.org/>.\nThere's support for (evented) blocking send and recv, a non-blocking receive,\nand for all the socket types and the functions you need to wire\nthem up and tear them down again.\nMost sockets options are available through accessor and mutator\nfunctions. Sockets are typed, transports are not.\nThe module Nanomsg.Binary provides a simple Binary based serialization\nlayer over send and receive.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          ];
        libs = [
          (pkgs."nanomsg" or ((hsPkgs.pkgs-errors).sysDepError "nanomsg"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."nanomsg-haskell" or ((hsPkgs.pkgs-errors).buildDepError "nanomsg-haskell"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-th"))
            ];
          buildable = true;
          };
        "tests-binary" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."nanomsg-haskell" or ((hsPkgs.pkgs-errors).buildDepError "nanomsg-haskell"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-th"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "send-messages" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."nanomsg-haskell" or ((hsPkgs.pkgs-errors).buildDepError "nanomsg-haskell"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        "vs-zeromq-bindings" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."nanomsg-haskell" or ((hsPkgs.pkgs-errors).buildDepError "nanomsg-haskell"))
            (hsPkgs."zeromq4-haskell" or ((hsPkgs.pkgs-errors).buildDepError "zeromq4-haskell"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }