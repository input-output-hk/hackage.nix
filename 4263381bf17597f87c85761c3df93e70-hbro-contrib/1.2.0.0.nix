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
        version = "1.2.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "koral <koral at mailoo dot org>";
      author = "koral <koral at mailoo dot org>";
      homepage = "https://bitbucket.org/k0ral/hbro-contrib";
      url = "";
      synopsis = "Third-party extensions to hbro.";
      description = "Cf README";
      buildType = "Simple";
    };
    components = {
      "hbro-contrib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.classy-prelude)
          (hsPkgs.containers)
          (hsPkgs.glib)
          (hsPkgs.gtk3)
          (hsPkgs.hbro)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.pango)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.safe)
          (hsPkgs.system-fileio)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers-base)
          (hsPkgs.unix)
          (hsPkgs.webkitgtk3)
        ];
      };
    };
  }