{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hascar"; version = "0.2.1.2"; };
      license = "GPL-2.0-only";
      copyright = "2016, Virtual Forge GmbH";
      maintainer = "Hans-Christian Esperer <hc@hcesperer.org>";
      author = "Hans-Christian Esperer <hc@hcesperer.org>";
      homepage = "https://github.com/VirtualForgeGmbH/hascar";
      url = "";
      synopsis = "Decompress SAPCAR archives";
      description = "Decompress SAPCAR archives";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.conduit)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.path)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      exes = {
        "hascar" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.gitrev)
            (hsPkgs.hascar)
            (hsPkgs.optparse-applicative)
            (hsPkgs.path)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
          };
        };
      tests = {
        "hascar-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.cryptohash)
            (hsPkgs.hascar)
            (hsPkgs.hex)
            (hsPkgs.path)
            ];
          };
        };
      };
    }