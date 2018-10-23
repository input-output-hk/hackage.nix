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
        name = "imm";
        version = "0.2.0.0";
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
          (hsPkgs.bytestring)
          (hsPkgs.cmdargs)
          (hsPkgs.directory)
          (hsPkgs.dyre)
          (hsPkgs.errors)
          (hsPkgs.feed)
          (hsPkgs.filepath)
          (hsPkgs.HTTP)
          (hsPkgs.mime-mail)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.timerep)
          (hsPkgs.transformers)
          (hsPkgs.utf8-string)
          (hsPkgs.xdg-basedir)
          (hsPkgs.xml)
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