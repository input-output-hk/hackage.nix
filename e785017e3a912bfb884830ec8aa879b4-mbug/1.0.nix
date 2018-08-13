{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      devel = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mbug";
        version = "1.0";
      };
      license = "GPL-3.0-only";
      copyright = "2018 Dmitry Bogatov";
      maintainer = "KAction@gnu.org";
      author = "Dmitry Bogatov";
      homepage = "https://gitlab.com/iu-guest/mbug";
      url = "";
      synopsis = "download bugs mailboxes";
      description = "See readme at https://gitlab.com/iu-guest/mbug";
      buildType = "Simple";
    };
    components = {
      "mbug" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.extra)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.scalpel-core)
          (hsPkgs.tagsoup)
          (hsPkgs.text)
          (hsPkgs.th-printf)
          (hsPkgs.time)
          (hsPkgs.xdg-basedir)
        ];
      };
      exes = {
        "mbug" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.extra)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.mbug)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.scalpel-core)
            (hsPkgs.tagsoup)
            (hsPkgs.text)
            (hsPkgs.th-printf)
            (hsPkgs.time)
            (hsPkgs.xdg-basedir)
          ];
        };
      };
    };
  }