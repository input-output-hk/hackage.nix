{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hexpat";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Stephen Blackheath <http://blacksapphire.com/antispam/>,\n(c) 2008 Evan Martin <martine@danga.com>,\n(c) 2009 Matthew Pocock <matthew.pocock@ncl.ac.uk>";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath (blackh), Evan Martin, Matthew Pocock (drdozer)";
      homepage = "http://code.haskell.org/hexpat/";
      url = "";
      synopsis = "wrapper for expat, the fast XML parser";
      description = "Expat (<http://expat.sourceforge.net/>) is a stream-oriented XML parser\nwritten in C.\n\nThis package provides a Haskell binding for Expat, with a choice of tree or\nSAX-style representation, and it includes an XML formatter.  It is extensible\nto any string type, with String, ByteString and Text provided out of the box.\n\nThe emphasis is on speed and simplicity. If you want more complete and powerful\nXML libraries, consider using HaXml or HXT instead.\n\nNote that hexpat has undergone a major API change since 0.3.x.\n\nBenchmark results on ghc 6.10.1 against HaXml for parsing a 4K xml file with non-threading runtime:\nHAXML: 2683 us, HEXPAT: low-level parse-no tree: 243 us, lazy-String: 1340 us,\nlazy-Text: 814 us, strict-String: 1194 us, strict-Text: 732 us\n\nWith -threaded:\nHAXML: 2691 us, HEXPAT: low-level parse-no tree: 472 us,\nlazy-String: 1575 us, lazy-Text: 1068 us, strict-String: 1396 us,\nstrict-Text: 964 us";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.binary)
          (hsPkgs.utf8-string)
          (hsPkgs.parallel)
        ];
        libs = [ (pkgs."expat") ];
      };
    };
  }