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
        name = "selectors";
        version = "0.0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ropoctl@gmail.com";
      author = "Rob O'Callahan";
      homepage = "";
      url = "";
      synopsis = "CSS Selectors for DOM traversal";
      description = "This package provides functions for XML DOM traversal that work with \"Text.XML.Cursor\" from the xml-conduits package. The pure Haskell functions in \"XML.Selectors.CSS\" include a parser for CSS selector expressions and conversion to an \"Axis\". A QuasiQuoter is provided in \"XML.Selectors.CSS.TH\" for static validation of selector expressions.";
      buildType = "Simple";
    };
    components = {
      "selectors" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.xml-conduit)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.array)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
          (hsPkgs.buildPackages.happy)
        ];
      };
    };
  }