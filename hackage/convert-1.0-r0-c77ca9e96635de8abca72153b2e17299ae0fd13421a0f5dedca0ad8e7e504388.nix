{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dump-splices = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "convert"; version = "1.0"; };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2015 Wojciech Danilo";
      maintainer = "Wojciech Danilo <wojciech.danilo@gmail.com>";
      author = "Wojciech Danilo";
      homepage = "https://github.com/wdanilo/convert";
      url = "";
      synopsis = "Safe and unsafe data conversion utilities with strong type-level operation. checking.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.old-time)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.old-locale)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.either)
          (hsPkgs.template-haskell)
          (hsPkgs.lens)
          ];
        };
      };
    }