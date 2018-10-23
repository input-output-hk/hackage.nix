{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hascal";
        version = "1.4.1";
      };
      license = "LicenseRef-GPL";
      copyright = "2012 Mekeor Melire";
      maintainer = "Mekeor Melire <mekeor.melire@googlemail.com>";
      author = "Mekeor Melire <mekeor.melire@googlemail.com>";
      homepage = "http://darcsden.com/mekeor/hascal";
      url = "";
      synopsis = "A minimalistic but extensible and precise calculator";
      description = "Hascal is a minimalistic calculator with infix-operations\nsupporting addition, subtraction, division, multiplication,\nexponentiation and logarithming.\nFuthermore, it's easy to add custom operators.";
      buildType = "Simple";
    };
    components = {
      "hascal" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "hascal" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.numbers)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [ (hsPkgs.HUnit) ];
        };
      };
    };
  }