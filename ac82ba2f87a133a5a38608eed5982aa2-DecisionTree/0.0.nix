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
      specVersion = "1.2";
      identifier = {
        name = "DecisionTree";
        version = "0.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "aneumann@inf.fu-berlin.de";
      author = "Adrian Neumann";
      homepage = "http://page.mi.fu-berlin.de/~aneumann/decisiontree.html";
      url = "";
      synopsis = "A very simple implementation of decision trees for discrete attributes.";
      description = "A very simple implementation of decision trees, built with ID3. You can use it to classify data with a set of discrete attributes.";
      buildType = "Simple";
    };
    components = {
      "DecisionTree" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }