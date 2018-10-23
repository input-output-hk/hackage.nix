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
        name = "unidecode";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Mark Wotton";
      maintainer = "mwotton@gmail.com";
      author = "A";
      homepage = "https://github.com/mwotton/unidecode#readme";
      url = "";
      synopsis = "Haskell translation of http://search.cpan.org/~sburke/Text-Unidecode-1.30/lib/Text/Unidecode.pm";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "unidecode" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "unidecode-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.unidecode)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }