{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "dawg";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/dawg";
      url = "";
      synopsis = "Directed acyclic word graphs";
      description = "The library implements /directed acyclic word graphs/ (DAWGs), which can\nbe also interpreted as /minimal acyclic finite-state automata/.\n\nIn most cases you can use the \"Data.DAWG\" module which provides the basic\nimplementation of DAWGs.  If values have substantial memory footprint\nconsider using the \"Data.DAWG.Wrapper\" module instead.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.vector)
          (hsPkgs.vector-binary)
          (hsPkgs.mtl)
          (hsPkgs.monad-codec)
        ];
      };
    };
  }