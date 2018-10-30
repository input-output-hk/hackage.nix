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
        name = "SimpleH";
        version = "1.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "marc.coiffier@gmail.com";
      author = "Marc Coiffier";
      homepage = "";
      url = "";
      synopsis = "A light, clean and powerful Haskell utility library";
      description = "SimpleH is a Prelude complement that defines a few very\nuseful abstractions, such as Monad transformers, Lenses, parser\ncombinators, reactive events and a few others.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.cpu)
          (hsPkgs.clock)
          (hsPkgs.network)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.unix)
          (hsPkgs.time)
        ];
      };
    };
  }