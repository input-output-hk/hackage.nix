{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      sample_progs = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ssh-known-hosts";
        version = "0.2.0.0";
      };
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.iproute)
          (hsPkgs.text)
        ];
      };
      exes = {
        "readknownhosts" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ssh-known-hosts)
          ];
        };
      };
      tests = {
        "test_parsing" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.iproute)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.ssh-known-hosts)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }