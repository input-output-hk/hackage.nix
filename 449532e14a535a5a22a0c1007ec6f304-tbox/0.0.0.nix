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
      specVersion = "1.2.3";
      identifier = {
        name = "tbox";
        version = "0.0.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Peter Robinson <thaldyron@gmail.com>";
      author = "Peter Robinson 2009";
      homepage = "http://darcs.monoid.at/tbox";
      url = "";
      synopsis = "Transactional variables with IO hooks";
      description = "(to be expanded...)\n\nThis package provides transactional variables with IO hooks.\nSee module 'Control.Concurrent.TFile' for a concrete instance.\n\nFeedback appreciated!";
      buildType = "Simple";
    };
    components = {
      "tbox" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm-io-hooks)
          (hsPkgs.mtl)
          (hsPkgs.binary)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.cautious-file)
        ];
      };
    };
  }