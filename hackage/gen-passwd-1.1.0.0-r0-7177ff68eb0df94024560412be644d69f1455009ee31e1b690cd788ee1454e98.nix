{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gen-passwd";
        version = "1.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Anton Felix Lorenzen <anfelor@posteo.de>";
      author = "Anton Felix Lorenzen";
      homepage = "https://github.com/anfelor/gen-passwd#readme";
      url = "";
      synopsis = "Create wordlist-based passwords easily";
      description = "See README at <https://github.com/anfelor/gen-passwd#readme>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gen-passwd" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.random)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }