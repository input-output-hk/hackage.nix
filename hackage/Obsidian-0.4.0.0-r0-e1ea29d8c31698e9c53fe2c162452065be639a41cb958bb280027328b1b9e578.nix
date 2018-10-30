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
      specVersion = "1.8";
      identifier = {
        name = "Obsidian";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2015 Joel Svensson";
      maintainer = "Joel Svensson<svenssonjoel@yahoo.se>";
      author = "Joel Svensson<svenssonjoel@yahoo.se>";
      homepage = "https://github.com/svenssonjoel/Obsidian";
      url = "";
      synopsis = "Embedded language for GPU Programming";
      description = "Obsidian is an embedded language for general purpose programming targeting\nGPU's.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.process)
          (hsPkgs.rdtsc)
          (hsPkgs.value-supply)
          (hsPkgs.language-c-quote)
          (hsPkgs.mainland-pretty)
          (hsPkgs.mwc-random)
          (hsPkgs.cuda)
        ];
      };
    };
  }