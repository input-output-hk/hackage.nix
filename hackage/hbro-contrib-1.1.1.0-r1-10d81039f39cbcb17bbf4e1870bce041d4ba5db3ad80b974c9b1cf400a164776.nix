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
        name = "hbro-contrib";
        version = "1.1.1.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "koral at mailoo dot org";
      author = "koral";
      homepage = "https://github.com/k0ral/hbro-contrib/";
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
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.pango)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers-base)
          (hsPkgs.unix)
          (hsPkgs.webkit)
        ];
      };
    };
  }