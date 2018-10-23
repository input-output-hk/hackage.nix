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
        name = "monoid-record";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2009 Robin Green";
      maintainer = "Robin Green <greenrd@greenrd.org>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Support for modifying record fields of monoidal type";
      description = "Small module with utility function and class for modifying record fields\nof a monoidal type.";
      buildType = "Simple";
    };
    components = {
      "monoid-record" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }