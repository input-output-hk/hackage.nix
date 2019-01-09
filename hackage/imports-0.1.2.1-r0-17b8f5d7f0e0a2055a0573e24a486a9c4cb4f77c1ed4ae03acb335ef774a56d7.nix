{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "imports"; version = "0.1.2.1"; };
      license = "MIT";
      copyright = "Copyright (C) 2015 Cindy Wang (CindyLinz)";
      maintainer = "Cindy Wang (CindyLinz) <cindylinz@gmail.com>";
      author = "Cindy Wang (CindyLinz)";
      homepage = "https://github.com/CindyLinz/Haskell-imports";
      url = "";
      synopsis = "Generate code for importing directories automatically";
      description = "This module helps to automatically generate code for importing all the haskell files from directories.\n\n= Synopsis\n\nFor <https://www.haskell.org/cabal/ cabal> inited project, we customize @Setup.hs@ file to generate the importing code.\n\n* Be sure to modify the @build-type@ field in the @.cabal@ file from @Simple@ to @Custom@.\n\n* Then modify the @main@ function in @Setup.hs@ to generate importing code by either header file or a module file.\n\nSetup.hs:\n\n> import Distribution.Simple\n> import System.Imports (writeImportsHeader, writeImportsModule)\n>\n> main = do\n>   writeImportsHeader \"imports.header\" \"Export\" \"Some.Where\" \"Some/Where\"\n>   -- or\n>   writeImportsModule \"ImportAll.hs\" \"ImportAll\" \"Some.Where\" \"Some/Where\"\n>\n>   defaultMain\n\nTarget.hs: (by header)\n\n@\n&#123;\\-\\# LANGUAGE CPP \\#\\-&#125;\nmodule Target where\n\n#include \"imports.header\"\n\nfunc = Export.funcFromSomeWhere\n@\n\nTarget.hs: (by module)\n\n@\nmodule Target where\n\nimport qualified ImportAll\n\nfunc = ImportAll.funcFromSomeWhere\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }