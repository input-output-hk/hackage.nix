{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hsmodetweaks"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Mark Wotton";
      maintainer = "mwotton@gmail.com";
      author = "mwotton@gmail.com";
      homepage = "https://github.com/mwotton/scriptable/#hsmodetweaks";
      url = "";
      synopsis = "Tool for generating .dir-locals.el for intero";
      description = "Keeps .dir-locals.el up to date so that intero can automatically choose the right targets";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsmodetweaks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.hpack)
            (hsPkgs.protolude)
            (hsPkgs.text)
            ];
          };
        };
      };
    }