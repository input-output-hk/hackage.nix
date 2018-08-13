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
        name = "heist-async";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dbp@riseup.net";
      author = "Daniel Patterson";
      homepage = "http://github.com/dbp/heist-async";
      url = "";
      synopsis = "Adding support for asynchronous updates (\"AJAX\") with heist";
      description = "This package provides six splices and some accompanying javascript to allow declarative ajax programming that involves no javascript programming.";
      buildType = "Simple";
    };
    components = {
      "heist-async" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.xmlhtml)
          (hsPkgs.heist)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }