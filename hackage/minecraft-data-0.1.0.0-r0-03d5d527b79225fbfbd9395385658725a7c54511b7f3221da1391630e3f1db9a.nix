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
      specVersion = "1.10";
      identifier = {
        name = "minecraft-data";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "jeremy@n-heptane.com";
      homepage = "https://github.com/stepcut/minecraft-data";
      url = "";
      synopsis = "a DSL for generating minecraft commands and levels";
      description = "a DSL for generating minecraft commands and levels";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cereal)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.pipes-cereal)
          (hsPkgs.pipes-parse)
          (hsPkgs.pipes-zlib)
          (hsPkgs.pipes)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.nbt)
          (hsPkgs.text)
          (hsPkgs.text-show)
          (hsPkgs.time)
          (hsPkgs.vector)
          (hsPkgs.zlib)
        ];
      };
    };
  }