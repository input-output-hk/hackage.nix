{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fmt-terminal-colors"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Kamil Figiela";
      maintainer = "kamil.figiela@gmail.com";
      author = "Kamil Figiela";
      homepage = "https://github.com/kfigiela/fmt-terminal-colors#readme";
      url = "";
      synopsis = "ANSI terminal colors formatters for fmt library";
      description = "Extra formatters for fmt formatting library for colorful terminal output.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.ansi-terminal) (hsPkgs.base) (hsPkgs.fmt) ];
        };
      tests = {
        "fmt-terminal-colors-test" = {
          depends = [
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.fmt)
            (hsPkgs.fmt-terminal-colors)
            ];
          };
        };
      };
    }