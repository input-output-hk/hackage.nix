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
      specVersion = "1.8";
      identifier = {
        name = "bond";
        version = "0.9.0.0";
      };
      license = "MIT";
      copyright = "Copyright (c) Microsoft. All rights reserved.";
      maintainer = "Adam Sapek <adamsap@microsoft.com>";
      author = "Adam Sapek <adamsap@microsoft.com>";
      homepage = "https://github.com/Microsoft/bond";
      url = "";
      synopsis = "Bond schema compiler and code generator";
      description = "Bond is a cross-platform framework for handling schematized\ndata. It supports cross-language de/serialization and\npowerful generic mechanisms for efficiently manipulating\ndata.\n\nThis package contains a library for parsing the Bond\nschema definition language and performing template-based\ncode generation. The library includes built-in templates\nfor generating standard Bond C++ and C# code, as well as\nutilities for writing custom codegen templates.\n\nThe package also contains a command-line compiler/codegen\ntool, named gbc, which is primarily used to generate code\nfor C++ and C# programs using Bond.";
      buildType = "Simple";
    };
    components = {
      "bond" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.scientific)
          (hsPkgs.shakespeare)
          (hsPkgs.text)
        ];
      };
      exes = {
        "gbc" = {
          depends  = [
            (hsPkgs.bond)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.monad-loops)
            (hsPkgs.text)
            (hsPkgs.parsec)
          ];
        };
      };
      tests = {
        "gbc-tests" = {
          depends  = [
            (hsPkgs.bond)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.monad-loops)
            (hsPkgs.text)
            (hsPkgs.derive)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.Diff)
            (hsPkgs.pretty)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }