{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      install-examples = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hsdns";
        version = "1.7.1";
      };
      license = "LGPL-3.0-only";
      copyright = "Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>, Lutz Donnerhacke <lutz@iks-jena.de>,\nГригорий Холомьёв <omever@gmail.com>, Evan Rinehart <ebr@sciresearch.com>";
      homepage = "http://github.com/peti/hsdns";
      url = "";
      synopsis = "Asynchronous DNS Resolver";
      description = "This library provides an asynchronous DNS resolver on top\nof GNU ADNS <http://www.chiark.greenend.org.uk/~ian/adns/>.\nNot all options are supported, but A, MX, and PTR lookups\nwork nicely. There is also support for retrieving generic\nRR types, CNAMEs, and for NSEC zone walking. The library\ncan be expected to work with fine ADNS 1.4 or later. It\nmight also work with version ADNS 1.3, but that hasn't\nbeen tested.\n\nThe example program adns-reverse-lookup.hs demonstrates\nhow the resolver is used. Given a list of host names on\nthe command line, it performs an A/PTR double-lookup and\nchecks whether the records are consistent. The\noutput is printed in the order in which the DNS responses\narrive:\n\n> \$ ./adns-reverse-lookup cryp.to localhost www.example.com\n> OK: localhost <-> 127.0.0.1\n> FAIL: cryp.to -> 217.19.183.102 -> [\"zuse.cryp.to\"]\n> OK: www.example.com <-> 192.0.32.10";
      buildType = "Simple";
    };
    components = {
      "hsdns" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.containers)
        ];
        libs = [ (pkgs."adns") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      exes = {
        "adns-reverse-lookup" = {
          depends  = pkgs.lib.optionals (flags.install-examples) [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.hsdns)
          ];
        };
        "adns-srv-test" = {
          depends  = pkgs.lib.optionals (flags.install-examples) [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.hsdns)
          ];
        };
        "adns-test-and-traverse" = {
          depends  = pkgs.lib.optionals (flags.install-examples) [
            (hsPkgs.base)
            (hsPkgs.hsdns)
          ];
        };
      };
    };
  }