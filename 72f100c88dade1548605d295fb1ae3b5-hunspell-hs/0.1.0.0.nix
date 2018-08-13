{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hunspell-hs";
        version = "0.1.0.0";
      };
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
      "hunspell-hs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
        ];
        libs = pkgs.lib.optional (system.isLinux) (pkgs.hunspell) ++ pkgs.lib.optional (system.isOsx) (pkgs.hunspell-1.6);
      };
      tests = {
        "hunspell-hs-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hunspell-hs)
            (hsPkgs.stm)
          ];
          libs = pkgs.lib.optional (system.isLinux) (pkgs.hunspell) ++ pkgs.lib.optional (system.isOsx) (pkgs.hunspell-1.6);
        };
      };
      benchmarks = {
        "hunspell-hs-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.hunspell-hs)
            (hsPkgs.stm)
          ];
          libs = pkgs.lib.optional (system.isLinux) (pkgs.hunspell) ++ pkgs.lib.optional (system.isOsx) (pkgs.hunspell-1.6);
        };
      };
    };
  }