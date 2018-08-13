{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Facts";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "© 2010 2piix.com";
      maintainer = "ajs@2piix.com";
      author = "Alexander Solla";
      homepage = "";
      url = "";
      synopsis = "A collection of facts about the real world.";
      description = "The Facts hierarchy is meant to contain commonly used, relatively static facts about the \\\"real world\\\".  The facts are meant to be encoded using relatively simple Haskell constructs.  However, we do make some promises:  every data type our modules export will have instances of 'Data', 'Eq', 'Ord', 'Show', and'Typeable'.  We will use explicit module export lists to control access to internal data structures.\n\nAs much of the data we are encoding is tabular, we use simple structures like lists and maps to encode the relations.  This has two practical ramifications:  the textual representation of the data can be very wide, but are also very easy to edit, with \\\"block editing\\\" tools like Vi's visual block mode.  The other consequence is that the naive approach to writing queries can be tedious, and the resulting naive queries are slower than they could be.  Template Haskell can eliminate much of this drudgery.  Felipe Lessa has graciously donated some Template Haskell code which we have adapted.\n\nThe Facts\\.\\* hierarchy currently contains modules with geographical information, such as a data type of countries, cross references to various ISO-3166-1 names for each, a list of states in the United States, and the United States address format.  Please see the module hierarchy for more specifics.  Patches are welcomed, though prospective contributors are encouraged to encode data structures using lists of pairs to encode bijections, all exposed data types are instances of 'Data', `Eq`, `Ord`, `Show`, and `Typeable`, and to use explicit exports to only export queries and their input and output types and constructors.  For now, we will add facts to the hierarchy lazily, as our projects need them.";
      buildType = "Simple";
    };
    components = {
      "Facts" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.AC-Angle)
          (hsPkgs.containers)
          (hsPkgs.digits)
          (hsPkgs.template-haskell)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }