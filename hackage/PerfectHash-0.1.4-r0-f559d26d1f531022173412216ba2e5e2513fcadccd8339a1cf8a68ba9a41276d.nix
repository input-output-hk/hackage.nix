{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "PerfectHash";
        version = "0.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Wotton <mwotton@gmail.com>";
      author = "Mark Wotton <mwotton@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A perfect hashing library for mapping bytestrings to values.";
      description = "A perfect hashing library for mapping bytestrings to values.\nInsertion is not supported (by design): this is just a binding\nto the C-based CMPH library (http://cmph.sf.net). Only fromList\nand lookup operations are supported, but in many circumstances\nthis is all that's required.\nCI at https://travis-ci.org/mwotton/PerfectHash";
      buildType = "Simple";
    };
    components = {
      "PerfectHash" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.digest)
          (hsPkgs.array)
          (hsPkgs.time)
          (hsPkgs.binary)
        ];
        libs = [ (pkgs."cmph") ];
      };
    };
  }