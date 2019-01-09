{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "sjsp"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "itchyny <https://github.com/itchyny>";
      author = "itchyny <https://github.com/itchyny>";
      homepage = "";
      url = "";
      synopsis = "Simple JavaScript Profiler";
      description = "This is a JavaScript profiler, injecting profiling\ncodes into your JavaScript files.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sjsp" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.syb)
            (hsPkgs.language-javascript)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.blaze-builder)
            (hsPkgs.unordered-containers)
            ];
          build-tools = [
            ((hsPkgs.buildPackages).happy)
            ((hsPkgs.buildPackages).alex)
            ];
          };
        };
      };
    }