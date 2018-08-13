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
      specVersion = "1.6";
      identifier = {
        name = "hgettext";
        version = "0.1.20";
      };
      license = "BSD-3-Clause";
      copyright = "2009 Vasyl Pasternak";
      maintainer = "vasyl.pasternak@gmail.com";
      author = "Vasyl Pasternak";
      homepage = "";
      url = "";
      synopsis = "Bindings to libintl.h (gettext, bindtextdomain)";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hgettext" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.containers)
          (hsPkgs.Cabal)
          (hsPkgs.setlocale)
        ];
      };
      exes = {
        "hgettext" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.uniplate)
            (hsPkgs.haskell-src-exts)
          ];
        };
      };
    };
  }