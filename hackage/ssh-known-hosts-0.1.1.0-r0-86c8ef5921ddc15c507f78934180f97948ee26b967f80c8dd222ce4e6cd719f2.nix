{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { sample_progs = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ssh-known-hosts"; version = "0.1.1.0"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "readknownhosts" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ssh-known-hosts" or (errorHandler.buildDepError "ssh-known-hosts"))
            ];
          buildable = if !flags.sample_progs then false else true;
          };
        };
      tests = {
        "test_parsing" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."ssh-known-hosts" or (errorHandler.buildDepError "ssh-known-hosts"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }