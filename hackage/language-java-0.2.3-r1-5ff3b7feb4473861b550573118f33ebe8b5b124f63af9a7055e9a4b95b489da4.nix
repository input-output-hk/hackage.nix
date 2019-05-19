{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "language-java"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Niklas Broberg";
      homepage = "http://github.com/vincenthz/language-java";
      url = "";
      synopsis = "Manipulating Java source: abstract syntax, lexer, parser, and pretty-printer";
      description = "Java source manipulation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.pretty)
          (hsPkgs.cpphs)
          (hsPkgs.parsec)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs.syb);
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
          ];
        };
      tests = {
        "test-java-parse" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.language-java)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            ];
          };
        };
      };
    }