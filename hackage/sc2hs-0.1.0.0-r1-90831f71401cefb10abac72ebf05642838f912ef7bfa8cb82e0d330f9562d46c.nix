{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "sc2hs"; version = "0.1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Sophie Taylor <sophie@spacekitteh.moe>";
      author = "Sophie Taylor <sophie@spacekitteh.moe>";
      homepage = "https://gitlab.com/spacekitteh/sc2hs";
      url = "";
      synopsis = "An interface to the Starcraft II bot API";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.etc)
          (hsPkgs.filepath)
          (hsPkgs.freer-simple)
          (hsPkgs.gitrev)
          (hsPkgs.lens)
          (hsPkgs.lens-labels)
          (hsPkgs.proto-lens)
          (hsPkgs.sc2-lowlevel)
          (hsPkgs.sc2-proto)
          (hsPkgs.sc2-support)
          (hsPkgs.text)
          ];
        };
      exes = {
        "sc2hs-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.etc)
            (hsPkgs.filepath)
            (hsPkgs.freer-simple)
            (hsPkgs.gitrev)
            (hsPkgs.lens)
            (hsPkgs.lens-labels)
            (hsPkgs.proto-lens)
            (hsPkgs.sc2-lowlevel)
            (hsPkgs.sc2-proto)
            (hsPkgs.sc2-support)
            (hsPkgs.sc2hs)
            (hsPkgs.text)
            ];
          };
        };
      };
    }