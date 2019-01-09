{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hw-json-lens"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016 Alexey Raga, 2018 John Ky";
      maintainer = "alexey.raga@gmail.com, newhoggy@gmail.com";
      author = "Alexey Raga, John Ky";
      homepage = "http://github.com/haskell-works/hw-json-lens#readme";
      url = "";
      synopsis = "Lens for hw-json";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hw-json)
          (hsPkgs.lens)
          (hsPkgs.containers)
          (hsPkgs.scientific)
          (hsPkgs.word8)
          ];
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hw-json)
            (hsPkgs.lens)
            (hsPkgs.criterion)
            (hsPkgs.hw-json-lens)
            ];
          };
        };
      };
    }