{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "nkjp"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/nkjp";
      url = "";
      synopsis = "Manipulating the National Corpus of Polish (NKJP)";
      description = "The library provides parsing and printing utilities for the\nNational Corpus of Polish (NKJP).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.polysoup)
          (hsPkgs.bytestring)
          (hsPkgs.zlib)
          (hsPkgs.tar)
          (hsPkgs.filepath)
          (hsPkgs.data-named)
          ];
        };
      exes = { "named2enamex" = {}; "nkjp2text" = {}; };
      };
    }