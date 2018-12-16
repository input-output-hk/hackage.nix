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
      specVersion = "1.6";
      identifier = {
        name = "iterIO";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "http://www.scs.stanford.edu/~dm/addr/";
      author = "David Mazieres";
      homepage = "http://www.scs.stanford.edu/~dm/iterIO";
      url = "";
      synopsis = "Iteratee-based IO with pipe operators";
      description = "Iteratee-based IO is an alternative to lazy IO that offers\nbetter error handling, referential transparency, and\nconvenient composition of protocol layers or parsers.  This\npackage provides iteratees based around /pipe/ operators for\nhooking together application components and directing data\nflow.  New users should see the tutorial in the \"Data.IterIO\"\nmodule documentation.  Highlights of the library include:\n\n* Heavy emphasis on ease of use, ease of learning, and\nuniformity of mechanism.\n\n* Copious documentation.\n\n* Consistent EOF and error handling to avoid resource leaks\nand other issues in corner cases.\n\n* A set of iteratee parsing combinators providing LL(*)\nparsing while generally not consuming large amounts of\nmemory for backtracking.\n\n* Seamless integration with attoparsec for LL(1) parsing.\n\nSee \"Data.IterIO\" for a discussion of the differences between\niterIO and the two previous iteratee implementations (iteratee\nand enumerator).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.ListLike)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.attoparsec)
          (hsPkgs.process)
          (hsPkgs.stringsearch)
          (hsPkgs.time)
          (hsPkgs.unix)
        ];
        libs = [ (pkgs."z") ];
      };
    };
  }