{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hsdns";
          version = "1.4.2";
        };
        license = "LicenseRef-LGPL";
        copyright = "(c) 2004-2010 Peter Simons";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "Peter Simons <simons@cryp.to>, Lutz Donnerhacke <lutz@iks-jena.de>, Григорий Холомьёв <omever@gmail.com>";
        homepage = "http://gitorious.org/hsdns";
        url = "";
        synopsis = "Asynchronous DNS Resolver";
        description = "This library provides an asynchronous DNS resolver on top\nof GNU ADNS <http://www.chiark.greenend.org.uk/~ian/adns/>.\nNot all options are supported, but A, MX, and PTR lookups\nwork nicely. There is also support for retrieving generic\nRR types, CNAMEs, and for NSEC zone walking. The library\ncan be expected to work with fine ADNS 1.4 or later. It\nmight also work with version ADNS 1.3, but that hasn’t\nbeen tested.\n\nThe example program adns-reverse-lookup.hs demonstrates\nhow the resolver is used. Given a list of host names on\nthe command line, it performs an A/PTR double-lookup and\nchecks whether the records are consistent. The\noutput is printed in the order in which the DNS responses\narrive:\n\n> \$ ./adns-reverse-lookup xyz.example.org ecrc.de www.example.com www.cryp.to\n> OK: www.example.com <-> 208.77.188.166\n> ERR: xyz.example.org: cannot resolve A\n> FAIL: www.cryp.to -> 195.234.152.69 -> [\"research.cryp.to\"]\n> FAIL: ecrc.de -> 127.0.0.1 -> [\"localhost\"]";
        buildType = "Simple";
      };
      components = {
        hsdns = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.containers
          ];
          libs = [ pkgs.adns ];
        };
      };
    }