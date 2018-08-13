{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      development = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "ats-storable";
        version = "0.3.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Marshal ATS types into Haskell";
      description = "Facilities for sharing types between ATS and Haskell";
      buildType = "Simple";
    };
    components = {
      "ats-storable" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.composition-prelude)
          (hsPkgs.text)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "ats-storable-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ats-storable)
            (hsPkgs.hspec)
          ];
          libs = [ (pkgs.storable) ];
        };
      };
    };
  }