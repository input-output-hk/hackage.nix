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
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.gitrev)
          (hsPkgs.proto-lens-runtime)
          ];
        build-tools = [ ((hsPkgs.buildPackages).proto-lens-protoc) ];
        };
      };
    }