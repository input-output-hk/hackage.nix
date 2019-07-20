{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "scotty-form"; version = "0.1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "zacharyachurchill@gmail.com";
      author = "goolord";
      homepage = "";
      url = "";
      synopsis = "Html form validation using `ditto`";
      description = "Formlet library for `scotty` using `lucid` and `ditto`";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.scotty)
          (hsPkgs.text)
          (hsPkgs.ditto)
          (hsPkgs.lucid)
          (hsPkgs.ditto-lucid)
          ];
        };
      };
    }