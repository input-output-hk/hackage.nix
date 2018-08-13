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
        name = "imm";
        version = "0.1.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "koral att mailoo dott org";
      author = "kamaradclimber, koral";
      homepage = "";
      url = "";
      synopsis = "RSS-to-maildir tool";
      description = "";
      buildType = "Simple";
    };
    components = {
      "imm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.dyre)
          (hsPkgs.feed)
          (hsPkgs.filepath)
          (hsPkgs.HTTP)
          (hsPkgs.time)
          (hsPkgs.xml)
          (hsPkgs.old-locale)
          (hsPkgs.random)
          (hsPkgs.bytestring)
          (hsPkgs.mime-mail)
          (hsPkgs.text)
          (hsPkgs.cmdargs)
          (hsPkgs.network)
          (hsPkgs.utf8-string)
        ];
      };
      exes = {
        "imm" = {
          depends  = [
            (hsPkgs.imm)
            (hsPkgs.base)
          ];
        };
      };
    };
  }