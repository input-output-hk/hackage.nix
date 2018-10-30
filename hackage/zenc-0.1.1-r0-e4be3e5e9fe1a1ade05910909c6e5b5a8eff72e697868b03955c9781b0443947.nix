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
        name = "zenc";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "GHC HQ";
      maintainer = "dagitj@gmail.com";
      author = "GHC Team, Jason Dagit";
      homepage = "";
      url = "";
      synopsis = "GHC style name Z-encoding and Z-decoding";
      description = "Implements GHC's name mangling.  This code was taken\ndirectly from the GHC source.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }