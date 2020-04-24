{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "HostAndPort"; version = "0.2.0"; };
      license = "MIT";
      copyright = "(c) Slava Bacherikov 2015";
      maintainer = "slava@bacher09.org";
      author = "Slava Bacherikov";
      homepage = "https://github.com/bacher09/hostandport";
      url = "";
      synopsis = "Parser for host and port pairs like localhost:22";
      description = "Simple parser for parsing host and port pairs.\nHost can be either ipv4, ipv6 or domain name and port are\noptional.\n\nIPv6 address should be surrounded by square brackets.\n\nExamples:\n\n* localhost\n\n* localhost:8080\n\n* 127.0.0.1\n\n* 127.0.0.1:8080\n\n* [::1]\n\n* [::1]:8080";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HostAndPort" or ((hsPkgs.pkgs-errors).buildDepError "HostAndPort"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HostAndPort" or ((hsPkgs.pkgs-errors).buildDepError "HostAndPort"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-hostandport" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HostAndPort" or ((hsPkgs.pkgs-errors).buildDepError "HostAndPort"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }