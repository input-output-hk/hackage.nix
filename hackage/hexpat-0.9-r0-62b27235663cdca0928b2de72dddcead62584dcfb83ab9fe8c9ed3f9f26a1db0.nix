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
      specVersion = "1.4";
      identifier = {
        name = "hexpat";
        version = "0.9";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Stephen Blackheath <http://blacksapphire.com/antispam/>,\n(c) 2008 Evan Martin <martine@danga.com>,\n(c) 2009 Matthew Pocock <matthew.pocock@ncl.ac.uk>";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath (blackh), Evan Martin, Matthew Pocock (drdozer)";
      homepage = "http://haskell.org/haskellwiki/Hexpat/";
      url = "";
      synopsis = "wrapper for expat, the fast XML parser";
      description = "Expat (<http://expat.sourceforge.net/>) is a stream-oriented XML parser\nwritten in C.\n\nThis package provides a Haskell binding for Expat, with a choice of /tree/ or\n/SAX-style/ representation, and it includes an /XML formatter/.  It is extensible\nto any string type, with @String@, @ByteString@ and @Text@ provided out of the box.\n\nThe emphasis is on speed and simplicity. If you want more complete and powerful\nXML libraries, consider using /HaXml/ or /HXT/ instead.\n\nExamples and benchmarks: <http://haskell.org/haskellwiki/Hexpat/>\n\nDARCS repository: <http://code.haskell.org/hexpat/>";
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
          (hsPkgs.utf8-string)
          (hsPkgs.parallel)
          (hsPkgs.containers)
          (hsPkgs.extensible-exceptions)
        ];
        libs = [ (pkgs."expat") ];
      };
    };
  }