{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "messente"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "kaiko@zazler.com";
      author = "Kaiko Kaur";
      homepage = "http://github.com/kaiko/messente-haskell";
      url = "";
      synopsis = "Messente SMS Gateway";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.http-conduit)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.HTTP)
          ];
        };
      };
    }