{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "hs-server-starter"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2017- hiratara";
      maintainer = "hiratara@cpan.org";
      author = "Masahiro Honma";
      homepage = "https://github.com/hiratara/hs-server-starter#readme";
      url = "";
      synopsis = "Write a server supporting Server::Starter's protocol in Haskell";
      description = "Provides a utility to write server program which can be\ncalled via Perl's https://github.com/kazuho/p5-Server-Starter\nprogram using Haskell.\nThis module does not provide a Haskell implementation of\nstart_server, so you need to use the original Perl version\nor use a version ported to golang.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        buildable = true;
        };
      exes = {
        "server-starter-warp-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hs-server-starter" or ((hsPkgs.pkgs-errors).buildDepError "hs-server-starter"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            ];
          buildable = if !flags.example then false else true;
          };
        };
      tests = {
        "hs-server-starter-test" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hs-server-starter" or ((hsPkgs.pkgs-errors).buildDepError "hs-server-starter"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }