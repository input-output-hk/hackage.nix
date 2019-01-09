{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { usebytestrings = true; enablequasiquotes = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "language-rust"; version = "0.1.0.26"; };
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
          ((hsPkgs.buildPackages).alex)
          ((hsPkgs.buildPackages).happy)
          ];
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.prettyprinter)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.language-rust)
            ];
          };
        "rustc-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.prettyprinter)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.test-framework)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.language-rust)
            (hsPkgs.time)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups);
          };
        };
      benchmarks = {
        "timing-benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.language-rust)
            (hsPkgs.criterion)
            (hsPkgs.statistics)
            (hsPkgs.aeson)
            ];
          };
        "allocation-benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.language-rust)
            (hsPkgs.weigh)
            (hsPkgs.aeson)
            ];
          };
        };
      };
    }