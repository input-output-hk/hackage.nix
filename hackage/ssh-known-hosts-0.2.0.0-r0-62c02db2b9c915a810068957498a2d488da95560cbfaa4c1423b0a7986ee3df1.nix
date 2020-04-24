{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { sample_progs = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ssh-known-hosts"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Kevin Quick";
      maintainer = "quick@sparq.org";
      author = "Kevin Quick";
      homepage = "http://hub.darcs.net/kquick/ssh-known-hosts";
      url = "";
      synopsis = "Read and interpret the SSH known-hosts file";
      description = "Utility to read the contents of the SSH known_hosts file and create\nlocal in-memory data structures for each of the remote entities\nlisted.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."iproute" or ((hsPkgs.pkgs-errors).buildDepError "iproute"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "readknownhosts" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ssh-known-hosts" or ((hsPkgs.pkgs-errors).buildDepError "ssh-known-hosts"))
            ];
          buildable = if !flags.sample_progs then false else true;
          };
        };
      tests = {
        "test_parsing" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."iproute" or ((hsPkgs.pkgs-errors).buildDepError "iproute"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."ssh-known-hosts" or ((hsPkgs.pkgs-errors).buildDepError "ssh-known-hosts"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }