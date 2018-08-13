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
        name = "JuPyTer-notebook";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "migamake@migamake.com";
      author = "Michal J. Gajda";
      homepage = "http://github.com/mgajda/ipynb";
      url = "";
      synopsis = "JuPyTer notebook parser";
      description = "JuPyTer also called IPython notebook.\n\nIt is cross-language interactive data science platform\nthat allows for interactive editing of code and visualizing its results.\n\nThis library allows to directly parse `.ipynb` files, and process them.";
      buildType = "Simple";
    };
    components = {
      "JuPyTer-notebook" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.json-autotype)
        ];
      };
      exes = {
        "jupyter-extract" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.json-autotype)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.JuPyTer-notebook)
          ];
        };
      };
    };
  }