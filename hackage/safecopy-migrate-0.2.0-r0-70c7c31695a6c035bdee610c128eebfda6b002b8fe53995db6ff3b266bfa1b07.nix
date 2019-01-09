{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "safecopy-migrate"; version = "0.2.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom";
      homepage = "http://github.com/aelve/safecopy-migrate";
      url = "";
      synopsis = "Making SafeCopy migrations easier";
      description = "A sort of a creepy language for describing @SafeCopy@ migrations\nand having types derived from them automatically.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-prelude)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.extra)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.microlens)
          (hsPkgs.safecopy)
          (hsPkgs.template-haskell)
          (hsPkgs.th-abstraction)
          (hsPkgs.uniplate)
          ];
        };
      };
    }