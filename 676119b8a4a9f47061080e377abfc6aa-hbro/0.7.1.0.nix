{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      threaded = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hbro";
        version = "0.7.1.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "koral at mailoo dot org";
      author = "koral";
      homepage = "http://projects.haskell.org/hbro/";
      url = "";
      synopsis = "A minimal KISS compliant browser";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hbro" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cmdargs)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.dyre)
          (hsPkgs.glib)
          (hsPkgs.gtk)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.pango)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.url)
          (hsPkgs.webkit)
          (hsPkgs.xdg-basedir)
          (hsPkgs.zeromq-haskell)
        ];
      };
      exes = {
        "hbro" = {
          depends  = [
            (hsPkgs.hbro)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }