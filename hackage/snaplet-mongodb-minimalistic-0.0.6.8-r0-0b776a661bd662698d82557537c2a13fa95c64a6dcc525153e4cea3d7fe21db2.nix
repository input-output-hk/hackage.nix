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
        name = "snaplet-mongodb-minimalistic";
        version = "0.0.6.8";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "the.palmik+maintainer@gmail.com";
      author = "Petr Pilař";
      homepage = "https://github.com/Palmik/snaplet-mongodb-minimalistic";
      url = "";
      synopsis = "Minimalistic MongoDB Snaplet.";
      description = "Minimalistic MongoDB Snaplet.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.snap)
          (hsPkgs.text)
          (hsPkgs.mongoDB)
        ];
      };
    };
  }