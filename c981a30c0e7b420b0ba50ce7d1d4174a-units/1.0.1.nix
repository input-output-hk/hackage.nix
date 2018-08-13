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
      specVersion = "1.10";
      identifier = {
        name = "units";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Richard Eisenberg <eir@cis.upenn.edu>";
      author = "Richard Eisenberg <eir@cis.upenn.edu>";
      homepage = "http://www.cis.upenn.edu/~eir/packages/units";
      url = "";
      synopsis = "A domain-specific type system for dimensional analysis";
      description = "The units package provides a mechanism for compile-time dimensional analysis\nin Haskell programs. It defines an embedded type system based on\nunits-of-measure. The units defined are fully extensible, and need not relate\nto physical properties. In fact, the core package defines only one built-in\nunit: Scalar. The package supports defining multiple inter-convertible units,\nsuch as Meter and Foot. When extracting a number from a dimensioned quantity,\nthe desired unit must be specified, and the value is converted into that unit.\nThe Haddock documentation is insufficient for using the units package. Please\nsee the README file, available from the package home page.";
      buildType = "Simple";
    };
    components = {
      "units" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }