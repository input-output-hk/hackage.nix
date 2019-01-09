{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bond-haskell-compiler"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2015 Andrey Sverdlichenko";
      maintainer = "Andrey Sverdlichenko";
      author = "blaze@ruddy.ru";
      homepage = "http://github.com/rblaze/bond-haskell#readme";
      url = "";
      synopsis = "Bond code generator for Haskell";
      description = "Bond is a cross-platform framework for handling schematized\ndata. It supports cross-language de/serialization and\npowerful generic mechanisms for efficiently manipulating\ndata.\n\nThe package contains a command-line compiler/codegen\ntool, named hbc, which is used to generate code for Haskell\nprograms using Bond.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bond)
          (hsPkgs.filepath)
          (hsPkgs.haskell-src-exts)
          ];
        };
      exes = {
        "hbc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bond)
            (hsPkgs.bond-haskell-compiler)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.monad-loops)
            ];
          };
        };
      tests = {
        "bond-haskell-compiler-test" = { depends = [ (hsPkgs.base) ]; };
        };
      };
    }