{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usebytestrings = true; enablequasiquotes = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "language-rust"; version = "0.2.0.27"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017-2018 Alec Theriault";
      maintainer = "alec.theriault@gmail.com";
      author = "Alec Theriault";
      homepage = "https://github.com/harpocrates/language-rust";
      url = "";
      synopsis = "Parsing and pretty printing of Rust code";
      description = "Language Rust is a library for the analysis of Rust code. It includes a\ncomplete, well tested parser and pretty printer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs.base)
          (hsPkgs.prettyprinter)
          (hsPkgs.transformers)
          (hsPkgs.array)
          (hsPkgs.deepseq)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups)) ++ (pkgs.lib).optionals (flags.usebytestrings) [
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          ]) ++ (pkgs.lib).optional (flags.enablequasiquotes) (hsPkgs.template-haskell);
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy))
          ];
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.language-rust)
            (hsPkgs.base)
            (hsPkgs.prettyprinter)
            ];
          };
        "rustc-tests" = {
          depends = [
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.test-framework)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.time)
            (hsPkgs.language-rust)
            (hsPkgs.base)
            (hsPkgs.prettyprinter)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups);
          };
        };
      benchmarks = {
        "timing-benchmarks" = {
          depends = [
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.criterion)
            (hsPkgs.statistics)
            (hsPkgs.language-rust)
            (hsPkgs.base)
            ];
          };
        "allocation-benchmarks" = {
          depends = [
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.weigh)
            (hsPkgs.language-rust)
            (hsPkgs.base)
            ];
          };
        };
      };
    }