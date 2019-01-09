{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "snaplet-redis"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dima@dzhus.org";
      author = "Dmitry Dzhus";
      homepage = "https://github.com/dzhus/snaplet-redis/";
      url = "";
      synopsis = "Redis support for Snap Framework";
      description = "This package provides a snaplet which wraps Redis\ninterface as implemented by Hedis library. Inline\ndocumentation contains usage examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.data-lens)
          (hsPkgs.data-lens-template)
          (hsPkgs.hedis)
          (hsPkgs.mtl)
          (hsPkgs.snap)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        };
      };
    }