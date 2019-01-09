{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hsc3"; version = "0.17"; };
      license = "GPL-3.0-only";
      copyright = "(c) Rohan Drape and others, 2005-2018";
      maintainer = "rd@rohandrape.net";
      author = "Rohan Drape";
      homepage = "http://rohandrape.net/t/hsc3";
      url = "";
      synopsis = "Haskell SuperCollider";
      description = "Haskell client for the SuperCollider synthesis server,\n<http://audiosynth.com/>.\n\nFor installation and configuration see the Tutorial at\n<http://rohandrape.net/t/hsc3-texts>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-ordlist)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hosc)
          (hsPkgs.murmur-hash)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          ];
        };
      };
    }