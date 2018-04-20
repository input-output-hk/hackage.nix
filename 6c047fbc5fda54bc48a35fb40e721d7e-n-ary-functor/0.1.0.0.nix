{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "n-ary-functor";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "gelisam+github@gmail.com";
        author = "Samuel Gélineau";
        homepage = "https://github.com/gelisam/n-ary-functor";
        url = "";
        synopsis = "An n-ary version of Functor";
        description = "A single typeclass for Functor, Bifunctor, Trifunctor, etc.";
        buildType = "Simple";
      };
      components = {
        n-ary-functor = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.doctest-discover
            ];
          };
        };
      };
    }