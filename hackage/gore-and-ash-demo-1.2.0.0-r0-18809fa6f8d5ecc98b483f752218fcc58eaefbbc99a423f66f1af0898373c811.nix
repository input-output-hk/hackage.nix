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
        name = "gore-and-ash-demo";
        version = "1.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015-2016 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "https://github.com/Teaspot-Studio/gore-and-ash-demo";
      url = "";
      synopsis = "Demonstration game for Gore&Ash game engine";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gore-and-ash-demo-client" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.exception-transformers)
            (hsPkgs.exceptions)
            (hsPkgs.GLFW-b)
            (hsPkgs.gore-and-ash)
            (hsPkgs.gore-and-ash-actor)
            (hsPkgs.gore-and-ash-logging)
            (hsPkgs.gore-and-ash-network)
            (hsPkgs.gore-and-ash-sdl)
            (hsPkgs.gore-and-ash-sync)
            (hsPkgs.hashable)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.network)
            (hsPkgs.OpenGL)
            (hsPkgs.sdl2)
            (hsPkgs.text)
            (hsPkgs.text-show)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
        "gore-and-ash-demo-server" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.exception-transformers)
            (hsPkgs.exceptions)
            (hsPkgs.gore-and-ash)
            (hsPkgs.gore-and-ash-actor)
            (hsPkgs.gore-and-ash-logging)
            (hsPkgs.gore-and-ash-network)
            (hsPkgs.gore-and-ash-sync)
            (hsPkgs.hashable)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.network)
            (hsPkgs.text)
            (hsPkgs.text-show)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }