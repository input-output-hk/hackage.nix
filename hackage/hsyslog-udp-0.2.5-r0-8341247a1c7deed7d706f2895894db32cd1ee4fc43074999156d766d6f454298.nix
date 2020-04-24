{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network--ge-3_0_0 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hsyslog-udp"; version = "0.2.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Konstantine Rybnikov <k-bx@k-bx.com>";
      author = "Jon Childress <jon@childr.es>";
      homepage = "https://github.com/k-bx/hsyslog-udp";
      url = "";
      synopsis = "Log to syslog over a network via UDP";
      description = "Supports <https://tools.ietf.org/html/rfc5424 RFC 5424>,\n<https://tools.ietf.org/html/rfc3164 RFC 3164>, or any\narbitrary protocol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."hsyslog" or ((hsPkgs.pkgs-errors).buildDepError "hsyslog"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ] ++ (if flags.network--ge-3_0_0
          then [
            (hsPkgs."network-bsd" or ((hsPkgs.pkgs-errors).buildDepError "network-bsd"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ]);
        buildable = true;
        };
      tests = {
        "specs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hsyslog-udp" or ((hsPkgs.pkgs-errors).buildDepError "hsyslog-udp"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }