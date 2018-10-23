{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ght";
        version = "0.3.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Conrad Parker <conrad@metadecks.org>";
      author = "Conrad Parker <conrad@metadecks.org>";
      homepage = "";
      url = "";
      synopsis = "Trivial routines for inspecting git repositories";
      description = "This is a bunch of trivial routines for inspecting git\nrepositories. It is in no way useful beyond that.";
      buildType = "Simple";
    };
    components = {
      "ght" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.SHA)
          (hsPkgs.old-locale)
          (hsPkgs.time)
        ];
      };
      exes = {
        "ght" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.SHA)
            (hsPkgs.ui-command)
            (hsPkgs.unix)
            (hsPkgs.zlib)
          ];
        };
      };
    };
  }