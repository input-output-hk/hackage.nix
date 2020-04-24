{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { distributed-process-tests = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "network-transport-amqp"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "alfredo.dinapoli@gmail.com";
      author = "Alfredo Di Napoli";
      homepage = "";
      url = "";
      synopsis = "AMQP-based transport layer for distributed-process (aka Cloud Haskell)";
      description = "AMQP-based transport layer for distributed-process (aka Cloud Haskell)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."amqp" or ((hsPkgs.pkgs-errors).buildDepError "amqp"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."string-conv" or ((hsPkgs.pkgs-errors).buildDepError "string-conv"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."stm-chans" or ((hsPkgs.pkgs-errors).buildDepError "stm-chans"))
          (hsPkgs."network-transport" or ((hsPkgs.pkgs-errors).buildDepError "network-transport"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."lens-family" or ((hsPkgs.pkgs-errors).buildDepError "lens-family"))
          (hsPkgs."lens-family-th" or ((hsPkgs.pkgs-errors).buildDepError "lens-family-th"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"));
        buildable = true;
        };
      tests = {
        "amqp-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."network-transport" or ((hsPkgs.pkgs-errors).buildDepError "network-transport"))
            (hsPkgs."network-transport-amqp" or ((hsPkgs.pkgs-errors).buildDepError "network-transport-amqp"))
            (hsPkgs."amqp" or ((hsPkgs.pkgs-errors).buildDepError "amqp"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."network-transport-tests" or ((hsPkgs.pkgs-errors).buildDepError "network-transport-tests"))
            ];
          buildable = true;
          };
        "api-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."network-transport" or ((hsPkgs.pkgs-errors).buildDepError "network-transport"))
            (hsPkgs."network-transport-amqp" or ((hsPkgs.pkgs-errors).buildDepError "network-transport-amqp"))
            (hsPkgs."amqp" or ((hsPkgs.pkgs-errors).buildDepError "amqp"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."network-transport-tests" or ((hsPkgs.pkgs-errors).buildDepError "network-transport-tests"))
            ];
          buildable = true;
          };
        };
      };
    }