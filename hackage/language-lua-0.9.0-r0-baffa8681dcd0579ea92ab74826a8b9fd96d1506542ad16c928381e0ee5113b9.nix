{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "language-lua"; version = "0.9.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eric Mertens <emertens@gmail.com>";
      author = "Ömer Sinan Ağacan, Eric Mertens";
      homepage = "http://github.com/glguy/language-lua";
      url = "";
      synopsis = "Lua parser and pretty-printer";
      description = "Lua 5.3 lexer, parser and pretty-printer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy))
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.language-lua)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.language-lua)
            ];
          };
        };
      };
    }