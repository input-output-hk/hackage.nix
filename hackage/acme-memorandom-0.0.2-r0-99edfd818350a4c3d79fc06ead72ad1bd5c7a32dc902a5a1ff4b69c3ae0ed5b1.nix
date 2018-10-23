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
        name = "acme-memorandom";
        version = "0.0.2";
      };
      license = "MIT";
      copyright = "Copyright © 2015 Johan Kiviniemi";
      maintainer = "Johan Kiviniemi <devel@johan.kiviniemi.name>";
      author = "Johan Kiviniemi <devel@johan.kiviniemi.name>";
      homepage = "https://github.com/ion1/acme-memorandom";
      url = "";
      synopsis = "Memoized random number generation";
      description = "A library for generating random numbers in a memoized manner. Implemented as\na lazy table indexed by serialized 'StdGen'. Monomorphism is used to\nfacilitate memoization, users should adapt their design to work with random\n'Int' values only.";
      buildType = "Simple";
    };
    components = {
      "acme-memorandom" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.MemoTrie)
          (hsPkgs.random)
        ];
      };
    };
  }