{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "definitive-sound";
        version = "1.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "marc.coiffier@gmail.com";
      author = "Marc Coiffier";
      homepage = "http://coiffier.net/projects/definitive-framework.html";
      url = "";
      synopsis = "A definitive package to handle sound and play it back";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.definitive-base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.clock)
          (hsPkgs.alsa-pcm)
          (hsPkgs.alsa-core)
          (hsPkgs.storable-record)
          (hsPkgs.sample-frame)
          (hsPkgs.vector)
          (hsPkgs.primitive)
        ];
      };
    };
  }