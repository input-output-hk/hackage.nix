{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "sc2-proto"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Sophie Taylor <sophie@spacekitteh.moe>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A protocol buffer model for the Starcraft II bot API";
      description = "";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        (hsPkgs.buildPackages.proto-lens-protoc or (pkgs.buildPackages.proto-lens-protoc))
        (hsPkgs.buildPackages.proto-lens-setup or (pkgs.buildPackages.proto-lens-setup))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.gitrev)
          (hsPkgs.proto-lens-runtime)
          ];
        build-tools = [
          (hsPkgs.buildPackages.proto-lens-protoc or (pkgs.buildPackages.proto-lens-protoc))
          ];
        };
      };
    }