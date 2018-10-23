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
        name = "oeis";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "Interface to the Online Encyclopedia of Integer Sequences";
      description = "Interface to the Online Encyclopedia of Integer Sequences. See <http://oeis.org/>.";
      buildType = "Custom";
    };
    components = {
      "oeis" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.HTTP)
        ];
      };
    };
  }