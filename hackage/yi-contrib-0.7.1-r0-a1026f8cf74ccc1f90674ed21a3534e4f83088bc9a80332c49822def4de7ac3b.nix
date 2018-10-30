{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "yi-contrib";
        version = "0.7.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "yi-devel@googlegroups.com";
      author = "AUTHORS";
      homepage = "http://haskell.org/haskellwiki/Yi";
      url = "";
      synopsis = "Add-ons to Yi, the Haskell-Scriptable Editor";
      description = "3rd-party add-ons to Yi. The goal of this package is to simplify the core Yi\npackage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-accessor)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.split)
          (hsPkgs.mtl)
          (hsPkgs.yi)
        ];
      };
    };
  }