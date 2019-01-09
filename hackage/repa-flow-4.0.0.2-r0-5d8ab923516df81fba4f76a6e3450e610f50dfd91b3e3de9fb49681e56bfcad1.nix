{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "repa-flow"; version = "4.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Repa Development Team";
      homepage = "http://repa.ouroborus.net";
      url = "";
      synopsis = "Data-parallel data flows.";
      description = "Data-parallel data flows.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.vector)
          (hsPkgs.bytestring)
          (hsPkgs.primitive)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.repa-stream)
          (hsPkgs.repa-eval)
          (hsPkgs.repa-array)
          ];
        };
      };
    }