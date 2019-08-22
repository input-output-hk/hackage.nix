{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "git-lfs"; version = "1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "2019 Joey Hess";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Joey Hess";
      homepage = "";
      url = "";
      synopsis = "git-lfs protocol";
      description = "An implementation of the git-lfs protocol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.aeson)
          (hsPkgs.network-uri)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          ];
        };
      };
    }