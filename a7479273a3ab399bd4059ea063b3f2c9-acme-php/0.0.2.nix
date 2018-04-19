{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "acme-php";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "headprogrammingczar@gmail.com";
        author = "JoeQuinn";
        homepage = "";
        url = "";
        synopsis = "The flexibility of Haskell and the safety of PHP";
        description = "At last, a module that combines the dynamic-typing features of Haskell 2010 with the performance and strict semantics of PHP!";
        buildType = "Simple";
      };
      components = {
        acme-php = {
          depends  = [ hsPkgs.base ];
        };
      };
    }