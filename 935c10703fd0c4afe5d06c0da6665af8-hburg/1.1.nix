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
      specVersion = "0";
      identifier = {
        name = "hburg";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "igor@bytelabs.org";
      author = "Igor Boehm <igor@bytelabs.org>";
      homepage = "http://www.bytelabs.org/hburg.html";
      url = "";
      synopsis = "Haskell Bottom Up Rewrite Generator";
      description = "HBURG is a program that generates tree parsers for cost-augmented\ntree grammars. It is useful for writing code generators for compilers.\nGiven a mapping of a tree structured intermediate representation onto\ntarget machine instructions, HBURG generates a code generator that can\nbe plugged into the instruction selection phase of a compiler.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "hburg" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }