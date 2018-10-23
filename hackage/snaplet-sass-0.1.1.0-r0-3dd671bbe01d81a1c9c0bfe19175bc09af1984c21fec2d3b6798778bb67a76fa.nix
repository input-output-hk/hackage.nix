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
        name = "snaplet-sass";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "luke.randall@gmail.com";
      author = "Luke Randall";
      homepage = "https://github.com/lukerandall/snaplet-sass";
      url = "";
      synopsis = "Sass integration for Snap with request- and pre-compilation.";
      description = "Sass integration for Snap with request based compilation during development and precompilation in production.\nFor more information, please see <https://github.com/lukerandall/snaplet-sass>.";
      buildType = "Simple";
    };
    components = {
      "snaplet-sass" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.configurator)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.transformers)
        ];
      };
    };
  }