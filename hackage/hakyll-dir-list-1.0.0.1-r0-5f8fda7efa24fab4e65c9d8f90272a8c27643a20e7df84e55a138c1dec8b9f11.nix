{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hakyll-dir-list"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Robert Hennig <robert.hennig@freylax.de>";
      author = "Robert Hennig <robert.hennig@freylax.de>";
      homepage = "http://github.com/freylax/hakyll-dir-list";
      url = "";
      synopsis = "Allow Hakyll to create hierarchical menues from directories.";
      description = "Hakyll extension which supports the creation of hierarchical\nmenus from source  files in a directory structure.\nAdittionally single page web sites can created by using flattened\npage id's instead of urls.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hakyll)
          (hsPkgs.filepath)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          ];
        };
      };
    }