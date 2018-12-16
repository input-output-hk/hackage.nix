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
      specVersion = "1.10";
      identifier = {
        name = "dmenu-search";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Hannes Saffrich";
      maintainer = "Hannes Saffrich <m0rphism@zankapfel.org>";
      author = "Hannes Saffrich";
      homepage = "https://github.com/m0rphism/haskell-dmenu-search";
      url = "";
      synopsis = "dmenu script for searching the web with customizable search engines.";
      description = "See README.md file.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "dmenu-search" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.dmenu)
          ];
        };
      };
    };
  }