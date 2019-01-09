{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "zm"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Pasqualino `Titto` Assini";
      maintainer = "tittoassini@gmail.com";
      author = "Pasqualino `Titto` Assini";
      homepage = "http://github.com/tittoassini/zm";
      url = "";
      synopsis = "Language independent, reproducible, absolute types";
      description = "See the <http://github.com/tittoassini/zm online tutorial>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.pretty)
          (hsPkgs.transformers)
          (hsPkgs.convertible)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.flat)
          (hsPkgs.model)
          (hsPkgs.either)
          ] ++ (if compiler.isGhcjs && true
          then [ (hsPkgs.ghcjs-base) ]
          else [ (hsPkgs.cryptonite) (hsPkgs.memory) ]);
        };
      tests = {
        "zm-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.pretty)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.timeit)
            (hsPkgs.flat)
            (hsPkgs.model)
            (hsPkgs.zm)
            ];
          };
        "zm-doctest" = {
          depends = [ (hsPkgs.base) (hsPkgs.doctest) (hsPkgs.filemanip) ];
          };
        };
      };
    }