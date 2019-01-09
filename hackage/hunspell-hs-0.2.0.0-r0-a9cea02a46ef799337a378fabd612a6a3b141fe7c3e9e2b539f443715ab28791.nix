{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hunspell-hs"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ashutosh Rishi Ranjan";
      maintainer = "ashutoshrishi92@gmail.com";
      author = "Ashutosh Rishi Ranjan";
      homepage = "https://github.com/ashutoshrishi/hunspell-hs#readme";
      url = "";
      synopsis = "Hunspell thread-safe FFI bindings for spell checking.";
      description = "Please see the README on GitHub at <https://github.com/ashutoshrishi/hunspell-hs#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.stm) ];
        libs = (pkgs.lib).optional (system.isOsx) (pkgs."hunspell-1.6");
        pkgconfig = (pkgs.lib).optional (system.isLinux) (pkgconfPkgs.hunspell);
        };
      tests = {
        "hunspell-hs-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hunspell-hs)
            (hsPkgs.stm)
            ];
          libs = (pkgs.lib).optional (system.isOsx) (pkgs."hunspell-1.6");
          pkgconfig = (pkgs.lib).optional (system.isLinux) (pkgconfPkgs.hunspell);
          };
        };
      benchmarks = {
        "hunspell-hs-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.hunspell-hs)
            (hsPkgs.stm)
            ];
          libs = (pkgs.lib).optional (system.isOsx) (pkgs."hunspell-1.6");
          pkgconfig = (pkgs.lib).optional (system.isLinux) (pkgconfPkgs.hunspell);
          };
        };
      };
    }