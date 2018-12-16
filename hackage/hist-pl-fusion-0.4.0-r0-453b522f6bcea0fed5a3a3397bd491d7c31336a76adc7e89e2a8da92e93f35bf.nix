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
        name = "hist-pl-fusion";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/hist-pl/tree/master/fusion";
      url = "";
      synopsis = "Merging historical dictionary with PoliMorf";
      description = "The library provides functions for merging historical dictionary\nwith PoliMorf morphological dictionary.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.binary)
          (hsPkgs.text-binary)
          (hsPkgs.dawg)
          (hsPkgs.polimorf)
          (hsPkgs.hist-pl-lexicon)
        ];
      };
    };
  }