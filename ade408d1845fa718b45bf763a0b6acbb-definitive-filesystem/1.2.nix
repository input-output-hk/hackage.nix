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
      specVersion = "1.10";
      identifier = {
        name = "definitive-filesystem";
        version = "1.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "marc.coiffier@gmail.com";
      author = "Marc Coiffier";
      homepage = "http://coiffier.net/projects/definitive-framework.html";
      url = "";
      synopsis = "A library that enable you to interact with the filesystem in a definitive way.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "definitive-filesystem" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.definitive-base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.primitive)
          (hsPkgs.definitive-reactive)
          (hsPkgs.clock)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.unix)
        ];
      };
    };
  }