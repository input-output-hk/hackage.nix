{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "snaplet-fay";
        version = "0.3.3.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "adam@bergmark.nl";
      author = "Adam Bergmark";
      homepage = "https://github.com/faylang/snaplet-fay";
      url = "";
      synopsis = "Fay integration for Snap with request- and pre-compilation.";
      description = "Fay integration for Snap with request based compilation during development and precompilation in production.\nFor more information, please see <https://github.com/bergmark/snaplet-fay>.";
      buildType = "Simple";
    };
    components = {
      "snaplet-fay" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.configurator)
          (hsPkgs.directory)
          (hsPkgs.fay)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.transformers)
        ];
      };
    };
  }