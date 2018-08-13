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
        version = "1.7.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "chahine.moreau@gmail.com";
      author = "chahine.moreau@gmail.com";
      homepage = "https://github.com/k0ral/hbro-contrib";
      url = "";
      synopsis = "Third-party extensions to hbro.";
      description = "Cf README";
      buildType = "Simple";
    };
    components = {
      "hbro-contrib" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.chunked-data)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.glib)
          (hsPkgs.gtk3)
          (hsPkgs.hbro)
          (hsPkgs.microlens)
          (hsPkgs.monad-control)
          (hsPkgs.mono-traversable)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.pango)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.safe)
          (hsPkgs.safe-exceptions)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers-base)
          (hsPkgs.unix)
          (hsPkgs.webkitgtk3)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chunked-data)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.glib)
            (hsPkgs.gtk3)
            (hsPkgs.hbro)
            (hsPkgs.microlens)
            (hsPkgs.monad-control)
            (hsPkgs.mono-traversable)
            (hsPkgs.mtl)
            (hsPkgs.network-uri)
            (hsPkgs.pango)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.resourcet)
            (hsPkgs.safe)
            (hsPkgs.safe-exceptions)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers-base)
            (hsPkgs.unix)
            (hsPkgs.webkitgtk3)
          ];
        };
      };
    };
  }