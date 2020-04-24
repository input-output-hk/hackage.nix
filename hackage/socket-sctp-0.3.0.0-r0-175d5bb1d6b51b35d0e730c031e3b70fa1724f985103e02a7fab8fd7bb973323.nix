{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "socket-sctp"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "shea@shealevy.com";
      author = "Lars Petersen, Shea Levy <shea@shealevy.com>";
      homepage = "https://github.com/shlevy/haskell-socket-sctp";
      url = "";
      synopsis = "STCP socket extensions library.";
      description = "This is a binding to the types and operations of `libsctp`.\nThis library is intended to used in conjunction with the `socket`\nlibrary it depends on.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."socket" or ((hsPkgs.pkgs-errors).buildDepError "socket"))
          ];
        libs = (pkgs.lib).optional (!system.isFreebsd) (pkgs."sctp" or ((hsPkgs.pkgs-errors).sysDepError "sctp"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "SendReceiveMessage" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."socket" or ((hsPkgs.pkgs-errors).buildDepError "socket"))
            (hsPkgs."socket-sctp" or ((hsPkgs.pkgs-errors).buildDepError "socket-sctp"))
            ];
          buildable = true;
          };
        "TooSmallBuffer" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."socket" or ((hsPkgs.pkgs-errors).buildDepError "socket"))
            (hsPkgs."socket-sctp" or ((hsPkgs.pkgs-errors).buildDepError "socket-sctp"))
            ];
          buildable = true;
          };
        "SendAll" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."socket" or ((hsPkgs.pkgs-errors).buildDepError "socket"))
            (hsPkgs."socket-sctp" or ((hsPkgs.pkgs-errors).buildDepError "socket-sctp"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
            ];
          buildable = true;
          };
        "Notifications" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."socket" or ((hsPkgs.pkgs-errors).buildDepError "socket"))
            (hsPkgs."socket-sctp" or ((hsPkgs.pkgs-errors).buildDepError "socket-sctp"))
            ];
          buildable = true;
          };
        };
      };
    }