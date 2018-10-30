{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      small_base = true;
      test = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "citeproc-hs";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrea.rossato@ing.unitn.it";
      author = "Andrea Rossato";
      homepage = "http://code.haskell.org/citeproc-hs";
      url = "";
      synopsis = "A Citation Style Language implementation in Haskell";
      description = "citeproc-hs is a Hakell port of Citeproc, a\nprocessor for converting citations into a variety\nof formats using a macro language called Citation\nStyle Language (CSL).\n\nFor more details on Citeproc and CSL, please check:\n<http://xbiblio.sourceforge.net/>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.mtl)
          (hsPkgs.hxt)
        ] ++ (if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }