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
        name = "hexpat-pickle";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Stephen Blackheath <http://blacksapphire.com/antispam/>,\n(c) 2009 Matthew Pocock <matthew.pocock@ncl.ac.uk>";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath (blackh), Matthew Pocock (drdozer)";
      homepage = "http://code.haskell.org/hexpat-pickle/";
      url = "";
      synopsis = "XML picklers based on hexpat, source-code-similar to those of the HXT package";
      description = "A library of combinators that allows Haskell data structures to be pickled\n(serialized) to/from XML via the Tree datatype defined in the hexpat package.\nIt is source-code-similar to the pickling functionality of the HXT package,\nto ease the transition between the two libraries. This implementation is\nfaster but less complete than HXT. This package does not depend on HXT.\n\nNote that hexpat-pickle is still under development, so it is fairly likely\nthat there will be some API changes coming.\n\nDARCS repository:\n<http://code.haskell.org/hexpat-pickle/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hexpat)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
    };
  }