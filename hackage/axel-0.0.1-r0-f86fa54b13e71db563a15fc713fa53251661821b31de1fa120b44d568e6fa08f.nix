{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "axel"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Joshua Grosso";
      maintainer = "jgrosso256@gmail.com";
      author = "Joshua Grosso";
      homepage = "https://github.com/axellang/axel#readme";
      url = "";
      synopsis = "The Axel programming language.";
      description = "Haskell's semantics, plus Lisp's macros. Meet Axel – a purely functional, extensible, and powerful programming language.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.regex-pcre)
          (hsPkgs.split)
          (hsPkgs.strict)
          (hsPkgs.text)
          (hsPkgs.typed-process)
          (hsPkgs.vector)
          (hsPkgs.yaml)
          ];
        };
      exes = {
        "axel-exe" = {
          depends = [ (hsPkgs.axel) (hsPkgs.base) (hsPkgs.directory) ];
          };
        };
      tests = {
        "axel-test" = { depends = [ (hsPkgs.base) (hsPkgs.hspec) ]; };
        };
      };
    }