{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "smallcheck";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Colin Runciman <Colin.Runciman@cs.york.ac.uk>";
      author = "Colin Runciman";
      homepage = "http://www.cs.york.ac.uk/fp/smallcheck0.2.tar";
      url = "";
      synopsis = "Another lightweight testing library in Haskell.";
      description = "SmallCheck is similar to QuickCheck (Claessen and Hughes 2000-) but\ninstead of testing for a sample of randomly generated values, SmallCheck\ntests properties for all the finitely many values up to some depth,\nprogressively increasing the depth used.\n\nFolk-law: if there is any case in which a program\nfails, there is almost always a simple one.\n\nCorollary: if a program does not fail in any\nsimple case, it almost never fails.\n\nOther possible sales pitches:\n\n* write test generators for your own types more easily\n\n* be sure any counter-examples found are minimal\n\n* write properties using existentials as well as universals\n\n* establish complete coverage of a defined test-space\n\n* display counter-examples of functional type";
      buildType = "Simple";
    };
    components = {
      "smallcheck" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }