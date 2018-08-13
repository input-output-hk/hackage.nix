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
        name = "dclabel-eci11";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Deian Stefan, David Mazieres, Alejandro Russo";
      maintainer = "Alejandro Russo < russo at chalmers dot se >, Deian Stefan  <deian at cs dot stanford dot edu>";
      author = "Deain Stefan, David Mazieres, Alejandro Russo";
      homepage = "";
      url = "";
      synopsis = "Dynamic labels to assign confidentiality and integrity levels in scenarios of mutual distrust";
      description = "s A package that provides dynamic labels in the form of conjunctions of disjunctions of principals. This package is intended to only be used at the computer science school ECI 2011 (Buenos Aires, Argentina) <http://www.dc.uba.ar/events/eci/2011/index_html>. Please, refer to the official release of dclabels if you plan to use it for other purposes.";
      buildType = "Simple";
    };
    components = {
      "dclabel-eci11" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pretty)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }