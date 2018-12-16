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
        name = "hsverilog";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "junji.hashimoto@gmail.com";
      author = "Junji Hashimoto";
      homepage = "";
      url = "";
      synopsis = "Synthesizable Verilog DSL supporting for multiple clock and reset";
      description = "Synthesizable Verilog DSL supporting for multiple clock and reset";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.shakespeare)
          (hsPkgs.text)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsverilog)
            (hsPkgs.hspec)
            (hsPkgs.hspec-contrib)
            (hsPkgs.hspec-expectations-lifted)
            (hsPkgs.shakespeare)
            (hsPkgs.transformers)
            (hsPkgs.text)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }