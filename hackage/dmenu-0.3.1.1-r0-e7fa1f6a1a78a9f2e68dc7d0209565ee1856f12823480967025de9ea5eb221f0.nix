{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "dmenu";
        version = "0.3.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Hannes Saffrich";
      maintainer = "Hannes Saffrich <m0rphism@zankapfel.org>";
      author = "Hannes Saffrich";
      homepage = "https://github.com/m0rphism/haskell-dmenu";
      url = "";
      synopsis = "Complete bindings to the dmenu and dmenu2 command line tools.";
      description = "Provides fuzzy selection via a GUI menu.";
      buildType = "Custom";
    };
    components = {
      "dmenu" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.process)
          (hsPkgs.directory)
        ];
      };
    };
  }