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
        name = "hsqml-demo-notes";
        version = "0.3.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2015 Robin KAY";
      maintainer = "komadori@gekkou.co.uk";
      author = "Robin KAY";
      homepage = "http://www.gekkou.co.uk/software/hsqml/";
      url = "";
      synopsis = "Sticky notes example program implemented in HsQML";
      description = "Sticky notes example program implemented in HsQML";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsqml-notes" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.sqlite-simple)
            (hsPkgs.hsqml)
          ];
        };
        "hsqml-notes-slow" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.sqlite-simple)
            (hsPkgs.hsqml)
          ];
        };
      };
    };
  }