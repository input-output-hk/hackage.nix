{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "heterocephalus";
          version = "1.0.0.2";
        };
        license = "MIT";
        copyright = "2016 Kadzuya Okamoto";
        maintainer = "arow.okamoto+github@gmail.com";
        author = "Kadzuya Okamoto";
        homepage = "https://github.com/arowM/heterocephalus#readme";
        url = "";
        synopsis = "A type safe template engine for collaborating with front end development tools";
        description = "Recent front end developing tools are growing fast and have created the complicated ecosystem, and few front end developer want to use Shakespeare template instead of commonly used @node@ friendly engines such that @pug@, @slim@, @haml@, though Shakespeare template has great feature of compile time variable interpolation and type checking.\nFrom this observation, Heterocephalus is developed for using with another feature rich template engine and only provides the way to interpolate server side variables into the precompiled template file with @forall@ and @if@ statement.";
        buildType = "Simple";
      };
      components = {
        "heterocephalus" = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.shakespeare
            hsPkgs.template-haskell
            hsPkgs.text
          ];
        };
        tests = {
          "heterocephalus-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.heterocephalus
            ];
          };
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Glob
              hsPkgs.doctest
              hsPkgs.heterocephalus
            ];
          };
        };
      };
    }