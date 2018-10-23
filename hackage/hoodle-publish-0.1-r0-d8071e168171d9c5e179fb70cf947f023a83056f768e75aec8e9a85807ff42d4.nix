{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hoodle-publish";
        version = "0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "http://ianwookim.org/hoodle";
      url = "";
      synopsis = "publish hoodle files as a static web site";
      description = "This package provieds a simple tool hoodle-publish which make a static web site from a directory containing hoodle files";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hoodle-publish" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.lens)
            (hsPkgs.cmdargs)
            (hsPkgs.directory-tree)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.uuid)
            (hsPkgs.gtk)
            (hsPkgs.cairo)
            (hsPkgs.poppler)
            (hsPkgs.pdf-toolbox-document)
            (hsPkgs.pdf-toolbox-core)
            (hsPkgs.io-streams)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.coroutine-object)
            (hsPkgs.hoodle-types)
            (hsPkgs.hoodle-parser)
            (hsPkgs.hoodle-render)
          ];
        };
      };
    };
  }