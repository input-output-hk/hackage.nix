{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "language-java";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Niklas Broberg <niklas.broberg@chalmers.se>";
      author = "Niklas Broberg";
      homepage = "";
      url = "";
      synopsis = "Manipulating Java source: abstract syntax, lexer, parser, and pretty-printer";
      description = "Java source manipulation.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.pretty)
          (hsPkgs.cpphs)
          (hsPkgs.parsec)
        ] ++ [ (hsPkgs.base) ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
        ];
      };
    };
  }