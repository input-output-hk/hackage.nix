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
      specVersion = "1.8";
      identifier = {
        name = "billeksah-forms";
        version = "1.0.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "Juergen \"jutaro\" Nicklisch-Franken";
      maintainer = "maintainer@leksah.org";
      author = "Juergen \"jutaro\" Nicklisch-Franken";
      homepage = "http://www.leksah.org";
      url = "https://github.com/leksah";
      synopsis = "Leksah library";
      description = "Form library used by leksah to edit preferences, cabal infos, etc";
      buildType = "Simple";
    };
    components = {
      "billeksah-forms" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.Cabal)
          (hsPkgs.gtk)
          (hsPkgs.glib)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.billeksah-services)
          (hsPkgs.billeksah-pane)
        ];
      };
    };
  }