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
        name = "hbro-contrib";
        version = "0.8.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "koral at mailoo dot org";
      author = "koral";
      homepage = "http://projects.haskell.org/hbro-contrib/";
      url = "";
      synopsis = "Third-party extensions to hbro.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hbro-contrib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.glib)
          (hsPkgs.gtk)
          (hsPkgs.hbro)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.pango)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.webkit)
        ];
      };
    };
  }